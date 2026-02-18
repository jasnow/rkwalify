#!/usr/bin/env bash
export TDU="test/data/users-guide"
export PROJHOME=${HOME}/Projects/rkwalify
export RUBYLIB=${PROJHOME}/lib:${PROJHOME}/test/data/users-guide
export PATH=${PATH}:${PROJHOME}/bin
COVERAGE="yes"
#
#cat <<WORKING >> /dev/null
######################################################################
#YAML/YAML
echo ; echo "2.1"
./bin/kwalify.rb -lf ${TDU}/schema01.yaml ${TDU}/document01a.yaml
#
echo ; echo "2.2"
./bin/kwalify.rb -lf ${TDU}/schema01.yaml ${TDU}/document01b.yaml
#
echo ; echo "3.1"
./bin/kwalify.rb -lf ${TDU}/schema02.yaml ${TDU}/document02a.yaml
echo ; echo "3.2"
./bin/kwalify.rb -lf ${TDU}/schema02.yaml ${TDU}/document02b.yaml
#
echo ; echo "4.1"
./bin/kwalify.rb -lf ${TDU}/schema03.yaml ${TDU}/document03a.yaml
echo ; echo "4.2"
./bin/kwalify.rb -lf ${TDU}/schema03.yaml ${TDU}/document03b.yaml
#
echo ; echo "5.1"
./bin/kwalify.rb -lf ${TDU}/schema04.yaml ${TDU}/document04a.yaml
echo ; echo "5.2"
./bin/kwalify.rb -lf ${TDU}/schema04.yaml ${TDU}/document04b.yaml
#
echo ; echo "8.1"
./bin/kwalify.rb -lf ${TDU}/schema05.yaml ${TDU}/document05a.yaml
echo ; echo "8.2"
./bin/kwalify.rb -lf ${TDU}/schema05.yaml ${TDU}/document05b.yaml
#
echo ; echo "9.1"
./bin/kwalify.rb -lf ${TDU}/schema06.yaml ${TDU}/document06a.yaml
#
echo ; echo "10.1"
./bin/kwalify.rb -lf ${TDU}/schema06.yaml ${TDU}/document06b.yaml
######################################################################
#JSON/JSON
echo ; echo "10.2"
./bin/kwalify.rb -lf ${TDU}/schema12.json ${TDU}/document12a.json
#
echo ; echo "11.1"
./bin/kwalify.rb -lf ${TDU}/schema12.json ${TDU}/document12b.json
#
######################################################################
#YAML/YAML
echo ; echo "12.1"
./bin/kwalify.rb -lf ${TDU}/schema13.yaml ${TDU}/document13a.yaml
echo ; echo "12.2"
./bin/kwalify.rb -lf ${TDU}/schema14.yaml ${TDU}/document14a.yaml
#
echo ; echo "13.1"
./bin/kwalify.rb -lf ${TDU}/schema14.yaml ${TDU}/document14b.yaml
#
echo ; echo "14.1"
./bin/kwalify.rb -lf ${TDU}/schema15.yaml ${TDU}/document15a.yaml
echo ; echo "14.2"
./bin/kwalify.rb -lf ${TDU}/schema15.yaml ${TDU}/document15b.yaml
#
echo ; echo "15.1 SKIPPED: schema.yaml unknown so changed to kwalify.schema.yaml"
echo ; echo "15.2 SKIPPED: schema.yaml unknown so changed to kwalify.schema.yaml"
#
echo ; echo "16.1: SKIPPED: NOT FULL EXAMPLE"
#./bin/kwalify.rb -m ${TDU}/schema1.yaml ${TDU}/schema2.yaml"
#
echo ; echo "17.1"
ruby ${TDU}/answers-validator.rb ${TDU}/document07a.yaml
#
echo ; echo "18.1"
ruby ${TDU}/howto3.rb
#
echo ; echo "19.1"
ruby ${TDU}/loadconfig.rb
#
echo ; echo "21.1"
ruby ${TDU}/loadbabel.rb
#
echo ; echo "26.1"
ruby -I ${RUBYLIB} ${TDU}/example_address_book.rb
#
echo ; echo "27.1 (WORKED 1st TIME)"
./bin/kwalify.rb -ha ./lib/kwalify/templates/genclass-ruby
echo ; echo "27.2"
./bin/kwalify.rb -ha ./lib/kwalify/templates/genclass-ruby --module=My --hashlike
#
echo ; echo "27.3 (WORKED 1st TIME)"
./bin/kwalify.rb -a ./lib/kwalify/templates/genclass-java \
    -tf ${TDU}/address_book.schema.yaml
rm -f AddressBook.java  Group.java  Person.java
#
echo ; echo "30.1.1"
echo "DEFERRED: No jar file - javac -nowarn -classpath '.:kwalify.jar' *.java"
# -Xlint:unchecked => "warning: [unchecked] unchecked call to
#    set(int,E) as a member of the raw type List
#List<Group> seq = new ArrayList<>();
#List<Person> seq = new ArrayList<>();
#
echo ; echo "30.1.2"
echo "DEFERRED: No jar file - javac -classpath '.:kwalify.jar' ${TDU}/ExampleAddressBook"
#
echo ; echo "31.1 (WORKED 1st TIME)"
./bin/kwalify.rb -ha ./lib/kwalify/templates/genclass-java
#
echo ; echo "31.2"
echo 'DEFERRED: Getting: "schema filename is not specified."'
./bin/kwalify.rb -a ./lib/kwalify/templates/genclass-java \
  --package=com.example.my --implements=Serializable --basedir=src
#
######################################################################
#RUBY
#
echo ; echo "DEFERRED/BROKEN - BUGS - STARTS HERE ===================="
set -x
#
echo ; echo "14.3"
echo "DEFERRED/BROKEN: Something about 'ARGF.class#read'"
#ruby ${TDU}/validate08.rb
#
echo ; echo "20.1"
echo "DEFERRED/BROKEN/BUG?: 'Kwalify::Util::OrderedHash#put': stack level too deep (SystemStackError)"
#./bin/kwalify.rb -a ./lib/kwalify/templates/genclass-ruby -P \
#    -f ${TDU}/BABEL.schema.yaml \
#    --hashlike --initialize=false --module=Babel -l lib:lib/kwalify/util
#
echo ; echo "25.1"
echo "DEFERRED/BROKEN/BUG?: 'Kwalify::Util::OrderedHash#put': stack level too deep (SystemStackError)"
#./bin/kwalify.rb -a ./lib/kwalify/templates/genclass-ruby \
#    -tf ${TDU}/address_book.schema.yaml > address_book.rb
#wc -l address_book.rb 
#rm -f address_book.rb
#
######################################################################
echo "Check for misspelled words"
#HID FOR NOW: devbin/chkspelling.sh > /tmp/$$_MISPELLINGS
wc /tmp/$$_MISPELLINGS 2> /dev/null
rm -f /tmp/$$_MISPELLINGS

unset COVERAGE
#EOF
######################################################################
