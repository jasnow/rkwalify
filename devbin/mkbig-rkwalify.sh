#!/usr/bin/env bash

unset RUBYLIB
ruby ./devbin/inline-require -I ./lib ./bin/kwalify.rb > ./bin/kwalify
cp ./lib/kwalify/kwalify.schema.yaml ./bin
