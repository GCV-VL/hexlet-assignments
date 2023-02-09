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
