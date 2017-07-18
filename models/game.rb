class Game

  def initialize(player1_input, player2_input)
    @player1_input = player1_input
    @player2_input = player2_input
  end

  def result
    if @player1_input == "rock" && @player2_input == "scissors"
      return " ...Player1 wins!"
    elsif @player1_input == "rock" && @player2_input == "paper"
      return " ...Player2 wins!"

    elsif @player1_input == "paper" && @player2_input == "scissors"
      return " ...Player2 wins!"
    elsif @player1_input == "paper" && @player2_input == "rock"
      return " ...Player1 wins!"

    elsif @player1_input == "scissors" && @player2_input == "rock"
      return " ...Player2 wins!"
    elsif @player1_input == "scissors" && @player2_input == "paper"
      return " ...Player1 wins!"

    elsif @player1_input == @player2_input
      return " ...It's a draw!"

    else
      return "Sorry, looks like that's not a rock or a paper... or scissors!"
    end
  end

end