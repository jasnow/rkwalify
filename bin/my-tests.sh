TDU="test/data/users-guide"
#
######################################################################
#YAML/YAML
echo ; echo "2.1"
./bin/kwalify -lf ${TDU}/schema01.yaml ${TDU}/document01a.yaml
echo ; echo "2.2"
./bin/kwalify -lf ${TDU}/schema01.yaml ${TDU}/document01b.yaml
#
echo ; echo "3.1"
./bin/kwalify -lf ${TDU}/schema02.yaml ${TDU}/document02a.yaml
echo ; echo "3.2"
./bin/kwalify -lf ${TDU}/schema02.yaml ${TDU}/document02b.yaml
#
echo ; echo "4.1"
./bin/kwalify -lf ${TDU}/schema03.yaml ${TDU}/document03a.yaml
echo ; echo "4.2"
./bin/kwalify -lf ${TDU}/schema03.yaml ${TDU}/document03b.yaml
#
echo ; echo "5.1"
./bin/kwalify -lf ${TDU}/schema04.yaml ${TDU}/document04a.yaml
echo ; echo "5.2"
./bin/kwalify -lf ${TDU}/schema04.yaml ${TDU}/document04b.yaml
#
echo ; echo "8.1"
./bin/kwalify -lf ${TDU}/schema05.yaml ${TDU}/document05a.yaml
echo ; echo "8.2"
./bin/kwalify -lf ${TDU}/schema05.yaml ${TDU}/document05b.yaml
#
echo ; echo "9.1"
./bin/kwalify -lf ${TDU}/schema06.yaml ${TDU}/document06a.yaml
#
echo ; echo "10.1"
./bin/kwalify -lf ${TDU}/schema06.yaml ${TDU}/document06b.yaml
######################################################################
#JSON/JSON
echo ; echo "10.2"
./bin/kwalify -lf ${TDU}/schema12.json ${TDU}/document12a.json
#
echo ; echo "11.1"
./bin/kwalify -lf ${TDU}/schema12.json ${TDU}/document12b.json
#
######################################################################
#YAML/YAML
echo ; echo "12.1"
./bin/kwalify -lf ${TDU}/schema13.yaml ${TDU}/document13a.yaml
echo ; echo "12.2"
./bin/kwalify -lf ${TDU}/schema14.yaml ${TDU}/document14a.yaml
#
echo ; echo "13.1"
./bin/kwalify -lf ${TDU}/schema14.yaml ${TDU}/document14b.yaml
#
echo ; echo "14.1"
./bin/kwalify -lf ${TDU}/schema15.yaml ${TDU}/document15a.yaml
echo ; echo "14.2"
./bin/kwalify -lf ${TDU}/schema15.yaml ${TDU}/document15b.yaml
#
######################################################################
#RUBY
PATH="./bin:${PATH}"
echo ; echo "14.3"
echo "BROKEN: ruby test/data/users-guide/validate08.rb"
#
echo ; echo "15.1"
echo "BROKEN: ruby TBD"
echo ; echo "15.2"
echo "BROKEN: ruby TBD"
#
echo ; echo "16.1"
echo "FYI: NOT FULL EX: ./bin/kwalify -m ${TDU}/schema1.yaml
#    ${TDU}/schema2.yaml..."
#
echo ; echo "17.1"
echo "BROKEN: Can't find kwalify - ruby ${TDU}/answers-validator.rb
#    ${TDU}/document07a.yaml"
#
echo ; echo "18.1"
echo "BROKEN: Can't find kwalify - ruby ${TDU}/howto3.rb"
#
echo ; echo "19.1"
echo "BROKEN: Can't find lib/kwalify/util/hashlike - ruby ${TDU}/loadconfig.rb"
#
echo ; echo "20.1"
echo "BROKEN: Can't find lib/kwalify/util/hashlike.rb"
#./bin/kwalify -a ./lib/kwalify/templates/genclass-ruby -P \
#    -f ${TDU}/BABEL.schema.yaml \
#    --hashlike --initialize=false --module=Babel
#
echo ; echo "21.1"
echo "BROKEN: Can't find kwalify - ruby ${TDU}/loadbabel.rb"
#
echo ; echo "25.1"
echo "BROKEN: Can't find kwalify/util/ordered-hash"
#./bin/kwalify -a ./lib/kwalify/templates/genclass-ruby \
#    -tf ${TDU}/address_book.schema.yaml > address_book.rb
#
echo ; echo "26.1"
echo "BROKEN: Can't find address_book.yaml "
#ruby ${TDU}/example_address_book.rb
#
echo ; echo "27.1 (WORKED 1st TIME)"
./bin/kwalify -ha ./lib/kwalify/templates/genclass-ruby
echo ; echo "27.2"
echo "BROKEN: Getting 'schema filename is not specified.'"
#./bin/kwalify -a ./lib/kwalify/templates/genclass-ruby --module=My --hashlike
#
echo ; echo "27.3 (WORKED 1st TIME)"
./bin/kwalify -a ./lib/kwalify/templates/genclass-java \
    -tf ${TDU}/address_book.schema.yaml

echo ; echo "30.1.1"
# -Xlint:unchecked => "warning: [unchecked] unchecked call to
#    set(int,E) as a member of the raw type List
#List<Group> seq = new ArrayList<>();
#List<Person> seq = new ArrayList<>();
javac -classpath '.:kwalify.jar' *.java

echo ; echo "30.1.2"
echo "BROKEN: UNCLEAR WHY: javac -classpath '.:kwalify.jar'
#  ${TDU}/ExampleAddressBook"
#
echo ; echo "31.1 (WORKED 1st TIME)"
./bin/kwalify -ha ./lib/kwalify/templates/genclass-java
#
echo ; echo "31.2"
echo 'BROKEN: Getting: "schema filename is not specified."'
#./bin/kwalify -a ./lib/kwalify/templates/genclass-java \
#    --package=com.example.my --implements=Serializable --basedir=src
#EOF
