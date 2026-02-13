#!/usr/bin/env bash

if [ "X$1X" == "XX" ] ; then
    echo "Usage: $0 file"
    exit
fi
 
tr -cs "[:alpha:]" "[\n*]" < $1 \
| tr "[A-Z]" "{a-z]" |sort -u > /tmp/$$_u

#INTERACTIVE: aspell list /tmp/$$_u

(spell       /tmp/$$_u
 hunspell -l /tmp/$$_u) | sort -u | pr -3 |uniq

rm /tmp/$$_u
