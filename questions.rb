require './player'

class Questions

	def initialize
		# @number_left = rand(1..20)
		# @number_right = rand(1..20)
	end

	def ask_question (player)
		@number_left = rand(1..20)
		@number_right = rand(1..20)
		output = "#{player.name}: What does #{@number_left} plus #{@number_right} equal?"
		puts output
	end

	def correct_answer(player)
		puts @number_left + @number_right
		print "> "
		number = $stdin.gets.chomp.to_i
		if number == @number_left + @number_right
			true
			p player.lives/3
		else
			"Wrong answer!"
			player.life_loss.to_s + " lives left"
			# p player.lives
		end
	end
end