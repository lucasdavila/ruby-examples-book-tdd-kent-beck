# coding: utf-8

require 'test/unit'
require 'money'

class MoneyTest < MiniTest::Unit::TestCase
  def test_multiplication
    five = Money::Dollar.new 5
    product = five * 2
    assert_equal 10, product.amount
    product = five * 3
    assert_equal 15, product.amount    
  end

  def test_equality
    assert_equal Money::Dollar.new(5), Money::Dollar.new(5)
    assert_not_equal Money::Dollar.new(5), Money::Dollar.new(6)
  end
end
