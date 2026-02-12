#!/usr/bin/env bash

unset RUBYLIB
ruby ./contrib/inline-require -I ./lib ./bin/kwalify > ./contrib/kwalify
chmod a+x ./contrib/kwalify
cp ./lib/kwalify/kwalify.schema.yaml ./bin
cp ./contrib/kwalify                 ./bin
