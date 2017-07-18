require 'minitest/autorun'
require_relative '../models/game'

class TestGame < MiniTest::Test

  def test_result__rock_paper
    game1 = Game.new("rock", "paper")
    assert_equal(" ...Player2 wins!", game1.result)
  end

  def test_result__rock_scissors
    game1 = Game.new("rock", "scissors")
    assert_equal(" ...Player1 wins!", game1.result)
  end

  def test_result__scissors_paper
    game1 = Game.new("scissors", "paper")
    assert_equal(" ...Player1 wins!", game1.result)
  end

  def test_result__scissors_rock
    game1 = Game.new("scissors", "rock")
    assert_equal(" ...Player2 wins!", game1.result)
  end

  def test_result__paper_rock
    game1 = Game.new("paper", "rock")
    assert_equal(" ...Player1 wins!", game1.result)
  end

  def test_reslt__paper_paper
    game1 = Game.new("paper", "paper")
    assert_equal(" ...It's a draw!", game1.result)
  end

  def test_result__blah
    game1 = Game.new("paper", "blah")
    assert_equal("Sorry, looks like that's not a rock or a paper... or scissors!", game1.result)
  end

end