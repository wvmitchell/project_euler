require 'minitest'
require 'minitest/autorun'
require 'minitest/emoji'
require_relative './solution'

class CollatzTest < MiniTest::Test

  def test_it_returns_a_single_sequence
    collatz = Collatz.new(1)
    assert_equal [1], collatz.sequence
  end

  def test_it_returns_a_two_element_sequence
    collatz = Collatz.new(2)
    assert_equal [2, 1], collatz.sequence
  end

  def test_it_returns_correct_sequence
    collatz = Collatz.new(3)
    assert_equal [3, 10, 5, 16, 8, 4, 2, 1], collatz.sequence
  end

end
