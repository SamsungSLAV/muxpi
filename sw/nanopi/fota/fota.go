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

// Package fota implements Flash Over The Air utilities.
package fota

import (
	"archive/tar"
	"bufio"
	"compress/gzip"
	"crypto/md5"
	"fmt"
	"io"
	"log"
	"net/http"
	"net/url"
	"os"
	"path"
	"time"

	"github.com/SamsungSLAV/muxpi/sw/nanopi/stm"
)

// FOTA provides methods to help in the process of flashing an image to sdcard.
type FOTA struct {
	checksums map[string]string
	// SDcard is a path to block device images will be flashed to.
	// Example: "/dev/sda".
	SDcard string
	// PartMapping ".img" file -> partition number.
	// Example: {"boot.img":1}
	PartMapping map[string]string
	// verbose allows logging to default log.Logger instance or prevents it if false.
	verbose bool
	// dev is interface to STM.
	dev stm.Interface
}

// NewFOTA returns new instance of FOTA. It also opens connection to STM.
func NewFOTA(dev stm.Interface, sdcard string, partMapping map[string]string) *FOTA {
	return &FOTA{
		checksums:   make(map[string]string),
		SDcard:      sdcard,
		PartMapping: partMapping,
		dev:         dev,
	}
}

// SetVerbose increases logging of FOTA actions.
func (fota *FOTA) SetVerbose() {
	fota.verbose = true
}

// computeHash passes content of the reader to the PipeReader
// and returns a MD5 checksum at the end.
// Returned PipeReader must be closed by the caller.
func (fota *FOTA) computeHash(reader io.Reader) (chan []byte, *io.PipeReader) {
	hash := md5.New()
	pipeReader, pipeWriter := io.Pipe()
	writer := io.MultiWriter(hash, pipeWriter)
	ret := make(chan []byte)
	go func() {
		defer close(ret)
		_, err := io.Copy(writer, reader)
		if err != nil {
			pipeWriter.CloseWithError(err)
			return
		}
		pipeWriter.Close()
		ret <- hash.Sum(nil)
	}()
	return ret, pipeReader
}

// flash copies content of reader to partition specified by path.
func (fota *FOTA) flash(reader io.Reader, path string) (int64, error) {
	f, err := os.OpenFile(path, os.O_WRONLY, 0660)
	if err != nil {
		return 0, err
	}
	defer f.Sync()
	defer f.Close()
	return io.Copy(f, reader)
}

// uncompressAndFlash uncompresses the stream, unpacks resulting archive
// and calls flash for each ".img" file mentioned in the PartMapping.
// It closes reader after it finishes.
func (fota *FOTA) uncompressAndFlash(reader io.ReadCloser) error {
	defer reader.Close()
	var start time.Time
	gzipReader, err := gzip.NewReader(reader)
	if err != nil {
		return err
	}
	tarReader := tar.NewReader(gzipReader)
	for {
		if fota.verbose {
			start = time.Now()
		}
		header, err := tarReader.Next()
		if err == io.EOF {
			break
		}
		if err != nil {
			return err
		}
		part, present := fota.PartMapping[header.Name]
		if !present {
			// Image not in mapping, skipping.
			fota.log("Image is not present in the mapping. Skipping...", header.Name)
			continue
		}
		path := fota.SDcard + part
		fota.log("Flashing", header.Name, "to", path)
		written, err := fota.flash(tarReader, path)
		if err != nil {
			return err
		}
		fota.log("Flashed", header.Name, "to", path)
		if fota.verbose {
			duration := time.Since(start)
			log.Printf("Average speed: %.2f kB/s\n", float64(written)/(duration.Seconds()*1000))
		}
	}
	return nil
}

func (fota *FOTA) log(str ...interface{}) {
	if fota.verbose {
		log.Println(str...)
	}
}

func (fota *FOTA) getMD5FromURL(url string) error {
	r, err := http.Get(url)
	if err != nil {
		return err
	}
	defer r.Body.Close()
	if r.StatusCode != http.StatusOK {
		return fmt.Errorf("unexpected HTTP status: %s", r.Status)
	}
	return fota.parseChecksum(r.Body)
}

func (fota *FOTA) getMD5FromFile(path string) error {
	f, err := os.Open(path)
	if err != nil {
		return err
	}
	defer f.Close()
	return fota.parseChecksum(f)
}

func (fota *FOTA) parseChecksum(r io.Reader) error {
	s := bufio.NewScanner(r)
	for s.Scan() {
		str := s.Text()
		var hash, filename string
		_, err := fmt.Sscanf(str, "%s  %s", &hash, &filename)
		if err != nil {
			return err
		}
		fota.checksums[filename] = hash
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
func (fota *FOTA) DownloadAndFlash(md5sums string, urls ...string) (err error) {
	if md5sums != "" {
		err = fota.getMD5FromURL(md5sums)
		if err != nil {
			return
		}
	}

	for _, u := range urls {
		err = fota.downloadAndFlash(u)
		if err != nil {
			return
		}
	}
	return
}

func (fota *FOTA) downloadAndFlash(u string) error {
	parsedURL, err := url.Parse(u)
	if err != nil {
		return fmt.Errorf("parse URL (%v) failed: %s", u, err)
	}
	filename := path.Base(parsedURL.Path)
	response, err := http.Get(u)
	if err != nil {
		return fmt.Errorf("GET failed: %s", err)
	}
	if response.StatusCode != http.StatusOK {
		response.Body.Close()
		return fmt.Errorf("unexpected HTTP status code: %s", response.Status)
	}
	fota.log("Downloading images from:", u)
	return fota.flashFromReader(response.Body, filename)
}

// Flash works in a similar way to DownloadAndFlash except that it takes paths to files instead of
// HTTP addresses.
func (fota *FOTA) Flash(md5sumsPath string, paths ...string) (err error) {
	if md5sumsPath != "" {
		err = fota.getMD5FromFile(md5sumsPath)
		if err != nil {
			return
		}
	}

	for _, p := range paths {
		var f *os.File
		f, err = os.Open(p)
		if err != nil {
			return
		}
		err = fota.flashFromReader(f, f.Name())
		if err != nil {
			return
		}
	}
	return
}

func (fota *FOTA) flashFromReader(r io.ReadCloser, filename string) (err error) {
	defer r.Close()
	hashChan, reader := fota.computeHash(r)
	err = fota.uncompressAndFlash(reader)
	if err != nil {
		return fmt.Errorf("unpack or flash failed: %s", err)
	}
	hash := <-hashChan
	refHash, ok := fota.checksums[filename]
	if !ok {
		return nil
	}
	if h := fmt.Sprintf("%x", hash); h != refHash {
		return fmt.Errorf("MD5 checksum mismatch: %s != %s", h, refHash)
	}
	return nil
}
