#!/usr/bin/env bash
for i in $(git grep -l 0.7.[012] |egrep -v "kwalify-0.7.2|2008-01|Attic|Mani|rubocop-rake")
do
    sed -e "s,Release 0.7.2,Release 1.4.0-preview1," \
        -e "s,Release: 0.7.2,Release: 1.4.0-preview1," $i > /tmp/$$_N
    mv /tmp/$$_N $i
done
