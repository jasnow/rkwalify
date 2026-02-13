#!/usr/bin/env bash

rm -f rkwalify-*.gem

# Create the Manifest.txt file that will be used by "gem build."
find . -type f  |sed -e s,./,, > Manifest.txt 

gem build
