require_relative 'board'

class Game
	attr_accessor :board
	def initalize(board)
		@board = board
	end
end
