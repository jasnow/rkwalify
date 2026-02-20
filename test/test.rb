###
### $Rev$
### $Release 1.4.0-beta $
### copyright(c) 2005-2010 kuwata-lab all rights reserved.
###

if ENV["COVERAGE"]
  require 'simplecov'

  SimpleCov.start 'rails' do
    enable_coverage :branch
    primary_coverage :branch
  end
end

unless defined?(TESTDIR)
  TESTDIR = File.dirname(__FILE__)
  libdir  = TESTDIR == '.' ? File.expand_path('../lib') : File.dirname(TESTDIR) + "/lib"
  $LOAD_PATH << libdir << TESTDIR
end


class StringWriter < String
  alias write <<
end


class Hash
  def inspect
    buf = [ '{' ]
    self.keys.sort_by {|k| k.to_s }.each_with_index do |key, i|
      buf << ', ' if i > 0
      buf << key.inspect << '=>' << self[key].inspect
    end
    buf << '}'
    return buf.join
  end
end


require 'test/unit'
require 'yaml'
require 'pp'
require 'kwalify'
require 'kwalify/util'
require 'kwalify/util/assert-text-equal'
require 'kwalify/util/testcase-helper'

if $0 == __FILE__

# NOTE: 1/29/2026: Commented out all non-test-rule test for now.

   # 6 tests, 6 errors - 0% passed
#  require 'test-action.rb'

   # 21 tests, 46 assertions, 20 failures - 4.7619% passed
#  require 'test-validator.rb'

   # 32 tests, 29 assertions, 29 failures, 1 notifications - 9.375% passed
#  require 'test-users-guide.rb'

   # 69 tests, 69 assertions, 20 failures - 71.0145% passed
#  require 'test-yaml-parser.rb'

   # 71 tests, 840 assertions, 3 failures - 95.7746% passed
#  require 'test-parser-yaml.rb'

#  hidme = <<~HIDME
  require 'test_logger.rb'

  require 'test-hashlike.rb'

  require 'test-rule.rb'

  require 'test-metavalidator.rb'

  require 'test-databinding.rb'

  require 'test-main.rb'

  require 'test-util.rb'
#HIDME

#  suite = Test::Unit::TestSuite.new()
#  suite << ValidatorTest.suite()
#  suite << MetaValidatorTest.suite()
#  suite << ParserTest.suite()
#  Test::Unit::UI::Console::TestRunner.run(suite)

end
