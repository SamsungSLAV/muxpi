#!/bin/sh
set -ex
dpkg-buildpackage -uc -us && dpkg-buildpackage -Tclean
dpkg-buildpackage -uc -us -d -aarmhf && dpkg-buildpackage -Tclean
mkdir -p bin
cp ../*.deb bin
