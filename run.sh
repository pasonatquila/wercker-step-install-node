#!/bin/sh
# Copyright (C) 2017 BigTrueData

set -e

version=$WERCKER_INSTALL_NODE_VERSION
tarball="node-v${version}-linux-x64.tar.gz"

url="https://nodejs.org/dist/v${version}/${tarball}"

if [ "$(which wget)" ]; then
  wget -O- "$url"

elif [ "$(which curl)" ]; then
  curl "$url"

else
  fail "Cannot find a command suitable to get the package"

fi | tar xzf - -C /usr/local --strip-components=1

ln -s /usr/local/bin/node /usr/local/bin/nodejs
