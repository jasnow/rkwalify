set +x

${HOME}/Projects/rkwalify/devbin/smoke-tests.sh 2>&1 \
| sed -e "s,0x[0-9a-f]*,HEX," > /tmp/$$_RST

sed -e "s,0x[0-9a-f]*,HEX," \
  ${HOME}/Projects/rkwalify/devbin/smoke-tests.golden > /tmp/$$_GOLDEN

diff /tmp/$$_GOLDEN /tmp/$$_RST

rm -f /tmp/$$_RST /tmp/$$_GOLDEN

#EX: 00007563d1482df8
