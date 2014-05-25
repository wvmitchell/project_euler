require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/powers'

class PowersTest < MiniTest::Test

  def test_it_defaults_to_1
    assert_equal Powers.sum_to, 1
  end

  def test_it_sums_first_3
    assert_equal Powers.sum_to(3), 32
  end

  def test_it_sums_first_10
    assert_equal Powers.sum_to(10), 10405071317
  end

end
