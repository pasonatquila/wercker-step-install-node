#!/bin/sh
# Copyright (C) 2017 BigTrueData

set -ex

version=$WERCKER_NODE_INSTALL_VERSION

tarball="node-v${version}-linux-x64.tar.gz"
url="https://nodejs.org/dist/v${version}/${tarball}"

wget -O- "${url}" | tar xzf - -C /usr/local --strip-components=1
ln -s /usr/local/bin/node /usr/local/bin/nodejs
