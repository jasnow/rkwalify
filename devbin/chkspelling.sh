#!/usr/bin/env bash

# CODE WORDS
cat $(find . -type f |egrep -v ".git/|coverage/") \
| tr -cs "[:alpha:]" "[\n*]" \
| tr "[A-Z]" "{a-z]" |sort -u > /tmp/$$_o_u

# Create one file.
# MY INITIAL SW WORDS: devbin/ruby_rails_wordlist.txt
# DOC WORDS:           devbin/ruby_docs_wordlist.txt
sort -u \
  devbin/ruby_rails_wordlist.txt \
  devbin/ruby_docs_wordlist.txt > /tmp/$$_o_b

#INTERACTIVE: aspell list /tmp/$$_u
(
spell /tmp/$$_o_u
echo "---"
hunspell -l /tmp/$$_o_u
) | sort -u
# | pr -3 |uniq

rm /tmp/$$_o_[bu]

# YES TO: egrep -v "html$|yaml$|json$|rb$|result|java"
