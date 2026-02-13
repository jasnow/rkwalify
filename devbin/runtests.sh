#!/usr/bin/env bash

for i in $(grep require test/test.rb |grep rb |sed -e "s,require ',test/," -e "s,',,") ; do
    echo " ruby $i&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&"
    ruby $i
done
