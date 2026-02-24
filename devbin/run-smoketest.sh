set +x

${HOME}/Projects/rkwalify/devbin/smoke-tests.sh 2>&1 \
| sed -e "s,0x[0-9a-f]*,HEX," > /tmp/$$_RST

sed -e "s,0x[0-9a-f]*,HEX," \
  ${HOME}/Projects/rkwalify/devbin/smoke-tests.golden > /tmp/$$_GOLDEN

if [ "X$1X" == "XgoldenX" ] ; then
    cp /tmp/$$_RST ${HOME}/Projects/rkwalify/devbin/smoke-tests.golden
else
    diff /tmp/$$_GOLDEN /tmp/$$_RST
fi

rm -f /tmp/$$_RST /tmp/$$_GOLDEN

#EX: 00007563d1482df8
