#!/bin/sh
# Copyright (C) 2017 BigTrueData

set -e

version=$WERCKER_INSTALL_NODE_VERSION
tarball="node-v${version}-linux-x64.tar.gz"

wget -O- "https://nodejs.org/dist/v${version}/${tarball}" \
| tar xzf - -C /usr/local --strip-components=1

ln -s /usr/local/bin/node /usr/local/bin/nodejs
