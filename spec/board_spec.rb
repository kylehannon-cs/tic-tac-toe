require_relative '../lib/board'

describe 'A Tic Tac Toe board' do
	it '#to_s' do
		board = Board.new()
		expect(board.to_s).to eq(board.empty_locations)
	end
	it 'has an empty baord' do
		board = Board.new()
		expect(board.empty?).to be_truthy
	end
	it 'resets a board' do
		board = Board.new() do
			expect(board.reset).to be_truthy
		end
	end
end	
