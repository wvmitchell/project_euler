require 'minitest/autorun'
require 'minitest/emoji'
require_relative '../lib/names'

class NamesTest < MiniTest::Test

  def test_it_knows_the_score_of_one_name
    names = Names.new('bob')
    assert_equal names.score, 19
  end

  def test_it_knows_the_score_of_another_name
    names = Names.new('abe')
    assert_equal names.score, 8
  end

  def test_it_knows_the_score_of_uppercase_name
    names = Names.new('ABE')
    assert_equal names.score, 8
  end

  def test_it_knows_the_score_of_two_names

  end

end
