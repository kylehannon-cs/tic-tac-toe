require_relative '../lib/board'

describe 'A Tic Tac Toe board' do
	it '#to_s' do
		board = Board.new()
		expect(board.to_s).to eq(board.empty_locations)
	end
end	
