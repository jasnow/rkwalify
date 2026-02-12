#!/usr/bin/env bash

rm -f rkwalify-*.gem

./bin/devbin/mkManifest.sh

gem build
