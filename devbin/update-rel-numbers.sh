#!/usr/bin/env bash
#kwalify-0.7.2|
for i in $(git grep -l preview1 |egrep -v "2008-01|Attic|Mani|rubocop-rake")
do
    sed -e  "s,Release 1.4.0-preview1,Release 1.4.0-beta," \
        -e "s,Release: 1.4.0-preview1,Release 1.4.0-beta," $i > /tmp/$$_N
    mv /tmp/$$_N $i
done
