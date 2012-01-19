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
    assert Money::Dollar.new(5) == Money::Dollar.new(5), 'Objetos com mesmo amount não são considerados iguais.'
    refute Money::Dollar.new(5) == Money::Dollar.new(6), 'Objetos com amount diferente são considerados iguais.'
  end
end
