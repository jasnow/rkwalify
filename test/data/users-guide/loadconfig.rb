## class definition
require 'kwalify/util/hashlike'
class Config
  include Kwalify::Util::HashLike  # defines [], []=, and keys?

  attr_accessor :host, :posrt, :user, :pass
end
## create validator object
require 'kwalify'
schema = Kwalify::Yaml.load_file('test/data/users-guide/config.schema.yaml')
validator = Kwalify::Validator.new(schema)
## parse configuration file with data binding
parser = Kwalify::Yaml::Parser.new(validator)
parser.data_binding = true    # enable data binding
config = parser.parse_file('test/data/users-guide/config.yaml')
require 'pp'
pp config
