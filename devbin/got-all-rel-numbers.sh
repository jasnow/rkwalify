#!/usr/bin/env bash
#was: 0.7.[012-9]
git grep preview1  \
| egrep -v ": 0.7.2|e 0.7.2|kwalify-0.7.2|2008-01|Step 1" \
| egrep -v "Attic|Mani|rubocop-rake|rel-num" \
| egrep -v "123"
