# coding: utf-8

require 'test/unit'
require 'money'

class MoneyTest < MiniTest::Unit::TestCase
  def test_multiplication
    five = Money::Dollar.new 5
    assert_equal Money::Dollar.new(10), five * 2
    assert_equal Money::Dollar.new(15), five * 3
  end

  def test_equality
    assert_equal Money::Dollar.new(5), Money::Dollar.new(5)
    refute_equal Money::Dollar.new(5), Money::Dollar.new(6)
  end
end
