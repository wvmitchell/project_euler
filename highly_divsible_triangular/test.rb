require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative './solution'

class TriNumTest < MiniTest::Test

  def test_it_finds_trinagle_num
    assert_equal triangle_num(1), 1
    assert_equal triangle_num(2), 3
    assert_equal triangle_num(7), 28
  end

  def test_it_returns_factors_for_triangle_num
    assert_equal triangle_num(3).factors, [1,2,3,6]
    assert_equal triangle_num(4).factors, [1,2,5,10]
  end

  def test_it_returns_factor_count
    assert_equal triangle_num(4).factor_count, 4
  end

end
