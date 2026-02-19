###
### $Rev$
### $Release 1.4.0-beta $
### copyright(c) 2005-2010 kuwata-lab all rights reserved.
###
# frozen_string_literal: false

require File.dirname(__FILE__) + '/test.rb'


class MetaValidatorTest < Test::Unit::TestCase

  ## define test methods
  filename = __FILE__.sub(/\.rb$/, '.yaml')
  load_yaml_documents(filename) do |ydoc|
    name = ydoc['name']
    kvydoc = ydoc.dup
    ydoc.each do |key, val|
      kvydoc[$1] = val['ruby'] if key =~ /(.*)\*$/
    end
    s = <<-END
         def test_meta_#{name}
            @name    = #{kvydoc['name'].inspect}
            @desc    = #{kvydoc['desc'].inspect}
            @schema  = #{kvydoc['schema'].inspect}
            @meta_msg = #{kvydoc['meta-msg'].inspect}
            @test_type = :meta
            _test
         end
      END
    module_eval s if ydoc['meta-msg']
    s = <<-END
         def test_rule_#{name}
            @name    = #{kvydoc['name'].inspect}
            @desc    = #{kvydoc['desc'].inspect}
            @schema  = #{kvydoc['schema'].inspect}
            @rule_msg = #{kvydoc['rule-msg'].inspect}
            @test_type = :rule
            _test
         end
      END
    module_eval s if ydoc['rule-msg']
  end


  ## execute test
  def _test()
    return if $target && $target != @name
    #schema = YAML.load(@schema)
    parser = Kwalify::YamlParser.new(@schema)
    schema = parser.parse()
    case @test_type
    when :meta
      meta_validator = Kwalify::MetaValidator.instance()
      errors = meta_validator.validate(schema)
      parser.set_errors_linenum(errors)
      errors.sort!
      expected = @meta_msg
    when :rule
      errors = []
      begin
        rule = Kwalify::Validator.new(schema)
      rescue Kwalify::KwalifyError => error
        errors << error
      end
      expected = @rule_msg
    end
    actual = ''
    errors.each do |error|
      raise error if error.is_a?(Kwalify::AssertionError)
      actual << ("%-20s: [%s] %s\n" % [error.error_symbol.inspect, error.path, error.message])
    end
    if ENV["DEBUG"]
      print actual
    else
      assert_text_equal(expected, actual)
    end
  end

end
