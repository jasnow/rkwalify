#!/usr/bin/env bash

echo -n "yaml::::::" ; find . -name "*.yaml" -type f |wc
echo -n "rb::::::::" ; find . -name "*.rb"   -type f |wc
echo -n "copyright:" ; git grep -i copyright         |wc

find . -name "*.yaml" -type f | sed -e "s,^./,," |sort -u > /tmp/$$_Y
find . -name "*.rb"   -type f | sed -e "s,^./,," |sort -u > /tmp/$$_R

git grep -il copyright |sort -u > /tmp/$$_C

if [ "X$1X" == "XallX" ] ; then

    echo
    echo ">> rb - NOT COPYRIGHT"
    fgrep -v -f /tmp/$$_C /tmp/$$_R

    echo
    echo ">> yaml - NOT COPYRIGHT"
    fgrep -v -f /tmp/$$_C /tmp/$$_Y

    echo
    echo ">> yaml - YES COPYRIGHT"
    grep -i copyright $(cat /tmp/$$_Y)
fi

if [ "X$1X" == "XmostX" ] ; then

    echo ; echo ">> rb - NOT COPYRIGHT"
    fgrep -v -f /tmp/$$_C /tmp/$$_R |egrep -v "test/data|examples|Attic"

    echo ; echo ">> yaml - NOT COPYRIGHT"
    fgrep -v -f /tmp/$$_C /tmp/$$_Y |egrep -v "test/data|examples"

    echo ; echo ">> yaml - YES COPYRIGHT"
    grep -i copyright $(cat /tmp/$$_Y) |egrep -v "test/data|examples"

    echo ; echo ">> copyright IN test/data AND examples FILES"
    grep -i copyright test/data/*/* examples/*/*
fi

rm /tmp/$$_Y /tmp/$$_R /tmp/$$_C
