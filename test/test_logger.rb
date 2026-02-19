require 'test/unit'
require 'stringio'
require 'kwalify/validator'

#require 'kwalify'
#require 'logger'

class TestLogger < Test::Unit::TestCase
  def test_custom_logger
    output = StringIO.new
    custom_logger = Logger.new(output)

    schema = {
      'type' => 'map',
      'mapping' => {
        '*' => { 'type' => 'any' }
      }
    }
    validator = Kwalify::Validator.new(schema, logger: custom_logger)
    
    # Should accept the custom logger
    assert_equal custom_logger, validator.logger
  end

  def test_default_logger
    schema = {
      'type' => 'map',
      'mapping' => {
        '*' => { 'type' => 'any' }
      }
    }
    validator = Kwalify::Validator.new(schema)
    
    # Should use default logger
    assert_not_nil validator.logger
  end
end
