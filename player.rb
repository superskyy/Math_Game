class Player
	attr_accessor :name, :lives

	def initialize(name)
		@name = name
		@lives = 3
	end

	def life_loss 
		@lives = @lives - 1
	end

	# def wrong_answer life
	# 	life.life_loss
	# end
end