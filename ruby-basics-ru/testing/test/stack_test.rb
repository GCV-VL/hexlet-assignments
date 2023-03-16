# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN

 # def before_setup
 #   my_stack = Stack.new
 #   @elements = ['ruby', 'php']
 # end

  def test_initialize
    my_stack = Stack.new
    assert  {initialize([]) == 0}
  end

  def test_pop!
    my_stack = Stack.new(elements = ['ruby', 'php', 'java'])
    expected_result = ['ruby', 'php']
    assert {my_stack.pop! == 'java'}
    assert {elements == ['ruby', 'php']}
  end

  def test_push!
    my_stack = Stack.new(elements = ['ruby', 'php'])
    element = 'java'
    #elements = ['ruby', 'php']
    expected_result = ['ruby', 'php', 'java']
    assert {my_stack.push!(element) == expected_result}
  end

  def test_empty?
    my_stack = Stack.new(elements = ['ruby', 'php'])
    refute {my_stack.empty?}
    my_stack = Stack.new(elements = [])
    assert {my_stack.empty?}
  end

  def test_to_a
    my_stack = Stack.new(elements = ['ruby', 'php'])
    assert {my_stack.to_a == ['ruby', 'php']}
  end

  def test_clear!
    my_stack = Stack.new(elements = ['ruby', 'php'])
    assert {my_stack.clear! == []}
  end

  def test_size
    my_stack = Stack.new(elements = ['ruby', 'php'])
    assert {my_stack.size == 2}
  end

   # END
end

test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
raise 'StackTest has not tests!' if test_methods.empty?
<<<<<<< HEAD
=======


 #   require 'minitest/autorun'
 #   require_relative '../lib/stack'
#
 #   class StackTest < Minitest::Test
 #     def setup
 #       @my_stack = Stack.new(['ruby', 'php'])
 #     end
#
 #     def test_initialize
 #       assert_equal 0, Stack.new.size
 #     end
#
 #     def test_pop!
 #       assert_equal 'java', @my_stack.push!('java').pop!
 #       assert_equal ['ruby', 'php'], @my_stack.to_a
 #     end
#
 #     def test_push!
 #       assert_equal ['ruby', 'php', 'java'], @my_stack.push!('java').to_a
 #     end
#
 #     def test_empty?
 #       refute @my_stack.empty?
 #       assert Stack.new.empty?
 #     end
#
 #     def test_to_a
 #       assert_equal ['ruby', 'php'], @my_stack.to_a
 #     end
#
 #     def test_clear!
 #       assert_equal [], @my_stack.clear!.to_a
 #     end
#
 #     def test_size
 #       assert_equal 2, @my_stack.size
 #     end
 #   end
#
>>>>>>> master
