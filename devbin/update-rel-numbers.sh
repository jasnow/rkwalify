#!/usr/bin/env bash
#kwalify-0.7.2|
for i in $(git grep -l beta |egrep -v "2008-01|Attic|Mani|rubocop-rake")
do
    sed -e  "s,Release 1.4.0,Release 1.4.0," \
        -e "s,Release 1.4.0,Release 1.4.0," $i > /tmp/$$_N
    mv /tmp/$$_N $i
done
