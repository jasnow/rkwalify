###
### $Rev$
### $Release: 0.7.2 $
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


class MainTest < Test::Unit::TestCase

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
    case @method
    when 'parseOptions'
      _test_parse_options()
    when 'execute'
      _test_execute()
    when 'validation'
      raise "*** #{@name}: schema is not defined."  unless @schema
      raise "*** #{@name}: valid is not defined."   unless @valid
      raise "*** #{@name}: invalid is not defined." unless @invalid
      _test_validation()
    #when 'action'
    #  _test_action()
    else
      raise "*** #{@method}: invalid method name."
    end
  end


  ## validation test
  def _test_validation()
    return if $target && $target != @name
    raise "*** schema is not defined." unless @schema
    raise "*** valid is not defined." unless @valid
    raise "*** invalid is not defined." unless @invalid
    #
    schema_filename  = @name + ".schema"
    valid_filename   = @name + ".valid"
    invalid_filename = @name + ".invalid"
    #
    begin
      #
      File.open(File.join(@@tmpdir, schema_filename),  'w') { |f| f.write(@schema) }
      File.open(File.join(@@tmpdir, valid_filename),   'w') { |f| f.write(@valid) }
      File.open(File.join(@@tmpdir, invalid_filename), 'w') { |f| f.write(@invalid) }
      #
      $stdout = StringWriter.new
      main = Kwalify::Main.new('kwalify')
      args = [ "-lf", schema_filename, valid_filename ]
      Dir.chdir(@@tmpdir) do
        main.execute(args)
      end
      output = $stdout;  $stdout = STDOUT
      assert_text_equal(@valid_out, output)
      #
      $stdout = StringWriter.new
      main = Kwalify::Main.new('kwalify')
      args = [ "-lf", schema_filename, invalid_filename ]
      Dir.chdir(@@tmpdir) do
        main.execute(args)
      end
      output = $stdout;  $stdout = STDOUT
      assert_text_equal(@invalid_out, output)
    end
  end


  ## execute test
  def _test_execute()
    return if $target && $target != @name
    raise "*** #{@name}: args is required."    unless @args
    raise "*** #{@name}: expected is require." unless @expected
    #
    File.open(File.join(@@tmpdir, "#{@name}.schema"), 'w')   { |f| f.write(@schema)   } if @schema
    File.open(File.join(@@tmpdir, "#{@name}.document"), 'w') { |f| f.write(@document) } if @document
    #
    begin
      main = Kwalify::Main.new("kwalify")
      if @exception_class
        $stdout = StringWriter.new
        ex = assert_raise(@exception_class) do
          Dir.chdir(@@tmpdir) do
            main.execute(@args)
          end
        end
        assert_text_equal(@errormsg, ex.message) if @errormsg
        $stdout = STDOUT
      else
        $stdout = StringWriter.new
        Dir.chdir(@@tmpdir) do
          main.execute(@args)
        end
        actual = $stdout;  $stdout = STDOUT
        assert_text_equal(@expected, actual)
      end
    end
  end


  ## command option test
  def _test_parse_options()
    return if $target && $target != @name
    main = Kwalify::Main.new("kwalify")
    begin
      filenames = main._parse_argv(@args)
      s = main._inspect()
      s << "filenames:\n"
      filenames.each do |filename|
        s << "  - #{filename}\n"
      end
      actual = s
      assert_text_equal(@expected, actual)
    rescue => ex
      #klass = @exception
      if @exception_class && ex.class == @exception_class
        # OK
        assert_equal(@error_symbol, ex.error_symbol) if ex.respond_to?(:error_symbol)
      else
        # NG
        raise ex
      end
    end
  end


end
