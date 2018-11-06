/*
 *  Copyright (c) 2017-2018 Samsung Electronics Co., Ltd All Rights Reserved
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License
 */

package sflasher

import (
	"fmt"
	"os"
	"time"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
	"github.com/SamsungSLAV/slav/logger"
	fsnotify "gopkg.in/fsnotify/fsnotify.v1"
)

const sdcardWaitTimeout = 30 * time.Second

// checkFile checks if file specified with filename is present and is a block device.
// It returns (true, nil) if it is. Non-nil error is returned if other error type
// than NotExistError is met.
func checkFile(filename string) (bool, error) {
	f, err := os.Stat(filename)
	if err != nil {
		if os.IsNotExist(err) {
			logger.WithError(err).WithProperty("file", filename).Error("File does not exist.")
			return false, nil
		}
		logger.WithError(err).WithProperty("file", filename).Error("Failed to get FileInfo.")
		return false, fmt.Errorf("could not access file %s: %s", filename, err)
	}
	// SDcard detected.
	mode := f.Mode()
	if mode&os.ModeDevice != 0 {
		logger.WithProperty("file", filename).Debug("File is a block device.")
		return true, nil
	}
	logger.WithProperties(logger.Properties{"file": filename, "mode": mode}).
		Error("File is not a block device.")
	return false, fmt.Errorf("unexpected file mode: %s, expected b", mode)
}

// WaitForSDcard checks if an SDcard is present in the system and returns.
// If card is not found it restarts it by DUT -> TS switch and tries again until number of
// retryCount is exceeded (then it returns an error).
// Logs are omitted as failure to get access to SD card is critical from sflasher point of view.
func WaitForSDcard(dev muxpictl.Interface, sdcard string, retryCount int) error {
	watcher, err := fsnotify.NewWatcher()
	if err != nil {
		logger.WithError(err).Error("Failed to establish new watcher with OS.")
		return fmt.Errorf("starting watcher failed: %s", err)
	}
	defer watcher.Close()
	err = watcher.Add("/dev/disk/by-path/")
	if err != nil {
		logger.WithError(err).Error("Failed to add SD card watcher.")
		return fmt.Errorf("add of sdcard to watcher failed: %s", err)
	}

	ticker := time.NewTicker(sdcardWaitTimeout)
	defer ticker.Stop()

	// Check for first partition of SDcard (device is always available on muxPi).
	filename := sdcard + "1"
	for try := 0; try < retryCount; try++ {
		isPresent, err := checkFile(filename)
		if err != nil {
			// err logger in checkFile
			return err
		}
		if isPresent {
			return nil
		}

		err = dev.DUT()
		if err != nil {
			logger.WithError(err).Error("Failed to connect SD card to DUT.")
			return fmt.Errorf("failed to connect SD card to DUT: %s", err)
		}
		// It is good to make sure that it is completely disconnected from the reader.
		time.Sleep(2 * time.Second)
		err = dev.TS()
		if err != nil {
			logger.WithError(err).Error("Failed to connect SD card to TS.")
			return fmt.Errorf("failed to connect SD card to TS: %s", err)
		}

	wait:
		select {
		case event := <-watcher.Events:
			if event.Op&fsnotify.Create == fsnotify.Create {
				break
			}
			goto wait
		case err := <-watcher.Errors:
			logger.WithError(err).Error("SD card watcher failed.")
			return fmt.Errorf("watcher error occurred: %s", err)
		case <-ticker.C:
		}
	}
	logger.WithProperty("attempts", retryCount).
		Error("Exceeded number of attemts when waiting for the SD card.")
	return fmt.Errorf("exceeded number of attempts")
}
