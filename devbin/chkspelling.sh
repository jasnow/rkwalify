#!/usr/bin/env bash

#if [ "X$1X" == "XX" ] ; then
#    echo "Usage: $0 file"
#    exit
#fi

cat $(find . -type f |egrep -v ".git/|coverage/") \
| tr -cs "[:alpha:]" "[\n*]" \
| tr "[A-Z]" "{a-z]" |sort -u > /tmp/$$_u

#INTERACTIVE: aspell list /tmp/$$_u

#(spell -d devbin/ruby_rails_wordlist.txt /tmp/$$_u
(
spell -d devbin/ruby_rails_wordlist.txt /tmp/$$_u
echo "---"
hunspell -l /tmp/$$_u
) | sort -u
# | pr -3 |uniq

rm /tmp/$$_u


# YES TO: egrep -v "html$|yaml$|json$|rb$|result|java"
