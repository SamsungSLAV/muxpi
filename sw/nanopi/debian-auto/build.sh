#!/bin/sh
set -ex
dpkg-buildpackage -uc -us -d -aarmhf
mkdir -p output
cp ../*.deb output
