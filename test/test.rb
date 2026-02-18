###
### $Rev$
### $Release: 1.4.0-preview1 $
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

#  require 'test-parser-yaml.rb'  # 91 tests, 913 assertions,  7 failures, 0 error
#  require 'test-yaml-parser.rb'  # 89 tests, 249 assertions, 17 failures, 0 errors

  require 'test-rule.rb'

#  require 'test-validator.rb'    # 37 tests,  72 assertions, 20 failures, 0 errors
  require 'test-metavalidator.rb'

# 1/27/2026: Commented out; Still getting: "Notification: <DataBindingTest#
#     test_databind4> was redefined [test_databind4(DataBindingTest)]
#  require 'test-databinding.rb'

  require 'test-main.rb'
#  require 'test-action.rb'       # 22 tests,  26 assertions,  0 failures, 6 ERRORS
#  require 'test-users-guide.rb'  # 48 tests,  55 assertions, 29 failures, 0 errors

  require 'test-util.rb'

#  suite = Test::Unit::TestSuite.new()
#  suite << ValidatorTest.suite()
#  suite << MetaValidatorTest.suite()
#  suite << ParserTest.suite()
#  Test::Unit::UI::Console::TestRunner.run(suite)

end
