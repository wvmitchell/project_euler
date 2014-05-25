require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/coins'

class CoinsTest < MiniTest::Test

  def test_it_knows_the_value_of_a_coin
    assert_equal 1, Coins.pence
  end

  def test_it_knows_the_value_of_all_others
    assert_equal 2, Coins.two_pence
    assert_equal 5, Coins.five_pence
    assert_equal 10, Coins.ten_pence
    assert_equal 20, Coins.twenty_pence
    assert_equal 50, Coins.fifty_pence
    assert_equal 100, Coins.pound
    assert_equal 200, Coins.two_pound
  end
end
