require 'kwalify'
parser = Kwalify::Yaml::Parser.new
parser.preceding_alias = true   # enable preceding alias
ydoc = parser.parse_file('test/data/users-guide/howto3.yaml')
require 'pp'
pp ydoc
