require './player'
require './questions'

class Game

	player1 = Player.new "Player 1"
	player2 = Player.new "Player 2"
	question1 = Questions.new()

	until player1.lives < 1 || player2.lives < 1
		question1.ask_question (player1)
		question1.correct_answer(player1)
		p player1.lives.to_s + " player1 lives left"
		p player2.lives.to_s + " player2 lives left"
		question1.ask_question (player2)
		question1.correct_answer(player2)
		p player1.lives.to_s + " player1 lives left"
		p player2.lives.to_s + " player2 lives left"
	end
end

game1 = Game.new()