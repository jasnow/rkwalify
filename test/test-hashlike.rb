require 'kwalify/util/hashlike.rb'

class TestHashLike < Test::Unit::TestCase
  class MyClass
    include Kwalify::Util::HashLike
    
    attr_accessor :foo, :bar
  end

  def test_set_and_get
    obj = MyClass.new
    obj[:foo] = 'hello'
    assert_equal 'hello', obj[:foo]
  end

  def test_key_exists
    obj = MyClass.new
    obj[:bar] = 'world'
    assert obj.key?(:bar)
    assert !obj.key?(:missing)
  end

  def test_no_stack_overflow
    # This should NOT cause infinite recursion
    obj = MyClass.new
    100.times { |i| obj[:"key#{i}"] = i }
    assert_equal 50, obj[:key50]
  end
end
