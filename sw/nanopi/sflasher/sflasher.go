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

// Package sflasher is a simple utility to flash SD cards.
//
package sflasher

import (
	"archive/tar"
	"bufio"
	"compress/gzip"
	"crypto/md5"
	"fmt"
	"io"
	"net/http"
	"net/url"
	"os"
	"path"
	"time"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/muxpictl"
	"github.com/SamsungSLAV/slav/logger"
)

// Sflasher provides methods to help in the process of flashing an image to sdcard.
type Sflasher struct {
	checksums map[string]string
	// SDcard is a path to block device images will be flashed to.
	// Example: "/dev/sda".
	SDcard string
	// PartMapping ".img" file -> partition number.
	// Example: {"boot.img":1}
	PartMapping map[string]string
	// dev is interface to MuxPiCtl.
	dev muxpictl.Interface
}

// NewSflasher returns new instance of Sflasher. It also opens connection to MuxPiCtl.
func NewSflasher(dev muxpictl.Interface, sdcard string, partMapping map[string]string) *Sflasher {
	logger.WithProperties(logger.Properties{"sdcard": sdcard, "mapping": partMapping}).
		Debug("Created new Sflasher object.")
	return &Sflasher{
		checksums:   make(map[string]string),
		SDcard:      sdcard,
		PartMapping: partMapping,
		dev:         dev,
	}
}

// computeHash passes content of the reader to the PipeReader
// and returns a MD5 checksum at the end.
// Returned PipeReader must be closed by the caller.
func (sf *Sflasher) computeHash(reader io.Reader) (chan []byte, *io.PipeReader) {
	hash := md5.New()
	pipeReader, pipeWriter := io.Pipe()
	writer := io.MultiWriter(hash, pipeWriter)
	ret := make(chan []byte)
	go func() {
		defer close(ret)
		_, err := io.Copy(writer, reader)
		if err != nil {
			logger.WithError(err).Error("Failed to copy Reader to PipeReader")
			pipeWriter.CloseWithError(err)
			return
		}
		pipeWriter.Close()
		ret <- hash.Sum(nil)
	}()
	return ret, pipeReader
}

// flash copies content of reader to partition specified by path.
func (sf *Sflasher) flash(reader io.Reader, path string) (int64, error) {
	f, err := os.OpenFile(path, os.O_WRONLY, 0660)
	if err != nil {
		logger.WithError(err).Error("Failed to open device file.")
		return 0, err
	}
	defer f.Sync()
	defer f.Close()
	return io.Copy(f, reader)
}

// uncompressAndFlash uncompresses the stream, unpacks resulting archive
// and calls flash for each ".img" file mentioned in the PartMapping.
// It closes reader after it finishes.
func (sf *Sflasher) uncompressAndFlash(reader io.ReadCloser) error {
	defer reader.Close()
	var start time.Time
	gzipReader, err := gzip.NewReader(reader)
	if err != nil {
		logger.WithError(err).Error("Failed to create gzip reader.")
		return err
	}
	tarReader := tar.NewReader(gzipReader)
	for {
		if logger.Threshold() >= logger.InfoLevel {
			start = time.Now()
		}
		header, err := tarReader.Next()
		if err == io.EOF {
			logger.Debug("End of input, tar reader found EOF.")
			break
		}
		if err != nil {
			logger.WithError(err).Error("Failed to get Image.")
			return err
		}
		part, present := sf.PartMapping[header.Name]
		if !present {
			// Image not in mapping, skipping.
			logger.Infof("Image %s not present in mapping, skipping...", header.Name)
			continue
		}
		path := sf.SDcard + part
		logger.Infof("Flashing %s to %s", header.Name, path)
		written, err := sf.flash(tarReader, path)
		if err != nil {
			logger.WithError(err).WithProperty("path", path).Error("failed to flash")
			return err
		}
		logger.Infof("Successfuly flashed %s to %s.", header.Name, path)
		if logger.Threshold() >= logger.InfoLevel {
			duration := time.Since(start)
			logger.Infof("Average speed: %.2f kB/s\n", float64(written)/(duration.Seconds()*1000))
		}
	}
	return nil
}

func (sf *Sflasher) getMD5FromURL(url string) error {
	r, err := http.Get(url)
	if err != nil {
		logger.WithProperty("url", url).WithError(err).Error("Failed to download md5sum.")
		return err
	}
	defer r.Body.Close()
	if r.StatusCode != http.StatusOK {
		logger.WithProperties(logger.Properties{"received-status-code": r.Status, "url": url}).
			Error("Expected 200 OK.")
		return fmt.Errorf("unexpected HTTP status: %s", r.Status)
	}
	return sf.parseChecksum(r.Body)
}

func (sf *Sflasher) getMD5FromFile(path string) error {
	f, err := os.Open(path)
	if err != nil {
		logger.WithProperty("path", path).WithError(err).Error("Failed to open file")
		return err
	}
	defer f.Close()
	return sf.parseChecksum(f)
}

func (sf *Sflasher) parseChecksum(r io.Reader) error {
	s := bufio.NewScanner(r)
	for s.Scan() {
		str := s.Text()
		var hash, filename string
		_, err := fmt.Sscanf(str, "%s  %s", &hash, &filename)
		if err != nil {
			logger.WithError(err).Error("Failed to parse checksum.")
			return err
		}
		sf.checksums[filename] = hash
	}
	return nil
}

// DownloadAndFlash downloads images from URLs, uncompresses them,
// unpacks the archives and writes resulting ".img" files to proper partitions.
//
// Files not mentioned in PartMapping are ignored.
//
// MD5 checksum is calculated and error returned when mismatch occurs.
// If MD5SUMS URL is not specified or downloaded file is not mentioned in it,
// calculation results are ignored.
func (sf *Sflasher) DownloadAndFlash(md5sums string, urls ...string) (err error) {
	if md5sums != "" {
		err = sf.getMD5FromURL(md5sums)
		if err != nil {
			logger.WithError(err).Error("Failed to download md5sum from URL.")
			return
		}
	}

	for _, u := range urls {
		err = sf.downloadAndFlash(u)
		if err != nil {
			logger.WithError(err).Error("Failed to download and flash.")
			return
		}
	}
	return
}

func (sf *Sflasher) downloadAndFlash(u string) error {
	logger.Infof("Downloading images from: %s", u)
	parsedURL, err := url.Parse(u)
	if err != nil {
		logger.WithError(err).WithProperty("URL", u).Error("Failed to parse URL")
		return fmt.Errorf("parse URL (%v) failed: %s", u, err)
	}
	filename := path.Base(parsedURL.Path)
	response, err := http.Get(u)
	if err != nil {
		logger.WithError(err).WithProperty("URL", u).Error("GET failed.")
		return fmt.Errorf("GET failed: %s", err)
	}
	if response.StatusCode != http.StatusOK {
		response.Body.Close()
		logger.WithProperty("URL", u).Errorf("Expected 200 OK, received %s", response.Status)
		return fmt.Errorf("unexpected HTTP status code: %s", response.Status)
	}
	return sf.flashFromReader(response.Body, filename)
}

// Flash works in a similar way to DownloadAndFlash except that it takes paths to files instead of
// HTTP addresses.
func (sf *Sflasher) Flash(md5sumsPath string, paths ...string) (err error) {
	if md5sumsPath != "" {
		err = sf.getMD5FromFile(md5sumsPath)
		if err != nil {
			logger.WithError(err).Error("Failed to get MD5 sum from file")
			return
		}
	}

	for _, p := range paths {
		var f *os.File
		f, err = os.Open(p)
		if err != nil {
			logger.WithError(err).Error("Failed to open file.")
			return
		}
		err = sf.flashFromReader(f, f.Name())
		if err != nil {
			logger.WithError(err).Error("Flash from reader failed.")
			return
		}
	}
	return
}

func (sf *Sflasher) flashFromReader(r io.ReadCloser, filename string) (err error) {
	defer r.Close()
	hashChan, reader := sf.computeHash(r)
	err = sf.uncompressAndFlash(reader)
	if err != nil {
		logger.WithError(err).WithProperty("filename", filename).Error("Failed to flash or unpack")
		return fmt.Errorf("unpack or flash failed: %s", err)
	}
	hash := <-hashChan
	refHash, ok := sf.checksums[filename]
	if !ok {
		logger.WithError(err).WithProperty("filename", filename).
			Error("Failed to match filename with expected checksum.")
		return nil
	}
	if h := fmt.Sprintf("%x", hash); h != refHash {
		logger.WithProperty("checksum-expected", refHash).WithProperty("checksum-actual", h).
			Error("Checksum mismatch.")
		return fmt.Errorf("MD5 checksum mismatch: %s != %s", h, refHash)
	}
	return nil
}
