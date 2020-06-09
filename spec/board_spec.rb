require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  let(:full_board) {
    Board.new({
      top: {left: :fake, middle: :fake, right: :fake},
      middle: {left: :fake, middle: :fake, right: :fake},
      bottom: {left: :fake, middle: :fake, right: :fake}
    })
  }

  let(:midgame_board) {
    Board.new({
      top: {left: :o, middle: nil, right: nil},
      middle: {left: nil, middle: :x, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    })
  }



	it '#to_s' do
		board = Board.new()
		expect(board.to_s).to eq(board.empty_locations)
	end
	it 'has an empty baord' do
		board = Board.new()
		expect(board.empty?).to be_truthy
	end
	it 'resets a board' do
		board = Board.new(:midgame_board)
		expect(board.reset).to be_truthy
	end
	it '#token_at' do
		board = Board.new()
		expect(board.token_at(2, 2)).to eq(nil)
	end
	it 'places a token at 2, 2' do
		board = Board.new()
		board.place('z', 2, 2)
		expect(board.token_at(2,2)).to eq('[2,2]')
	end
	it 'has a full board a.k.a cats game' do
		board = Board.new()
		expect(board.full?).to be_falsy
	end
end
