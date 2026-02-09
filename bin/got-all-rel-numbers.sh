git grep 0.7.[012]  \
| egrep -v ": 0.7.2|e 0.7.2|kwalify-0.7.2|2008-01" \
| egrep -v "Attic|Mani|rubocop-rake"
