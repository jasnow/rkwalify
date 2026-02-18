###
### $Rev$
### $Release 1.4.0-beta $
### copyright(c) 2005-2010 kuwata-lab all rights reserved.
###

require File.dirname(__FILE__) + '/test.rb'

require 'kwalify/main'


module Kwalify
  class Main
    public :_parse_argv
  end
end


class File
  def self.move(filename, dirname)
    File.rename(filename, "#{dirname}/#{filename}")
  end
end


class ActionTest < Test::Unit::TestCase

  ## define test methods
  filename = __FILE__.sub(/\.rb$/, ".yaml")
  load_yaml_testdata(filename, :lang=>'ruby')


  ## temporary directory
  @@tmpdir ||= Dir.mktmpdir("tmp.dir")


  def _test
    if @exception
      classname = @exception =~ /Kwalify::(.*)/ ? $1 : @exception
      @exception_class = Kwalify.const_get(classname)
    end
    return if $target && $target != @name
    raise "*** #{@name}: args is required."    unless @args
    raise "*** #{@name}: expected is required." unless @expected
    #
    File.write(File.join(@@tmpdir, "#{@name}.schema"), @schema) if @schema
    File.write(File.join(@@tmpdir, "#{@name}.document"), @document) if @document
    #
    begin
      main = Kwalify::Main.new("kwalify")
      $stdout = StringWriter.new
      Dir.chdir(@@tmpdir) do
        main.execute(@args)
      end
      actual = $stdout;  $stdout = STDOUT
      if @output_files
        if @output_message
          assert_text_equal(@output_message, actual)
        else
          assert(actual.nil? || actual=='')
        end
        @output_files.each do |filename|
          actual = File.read(File.join(@@tmpdir, filename))
          assert_text_equal(@expected[filename], actual)
        end
      else
        assert_text_equal(@expected, actual)
      end
    end
  end


end
