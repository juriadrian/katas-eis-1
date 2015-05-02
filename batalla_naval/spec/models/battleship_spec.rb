require_relative '../../app/models/Board.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
  end

  it 'create a Board' do
    expect(@board.kind_of? Board).to eq true
  end

  it 'should create a 5x5 Board' do
    expect(@board.size[0]).to eq 5
    expect(@board.size[1]).to eq 5
  end

  it 'should create a small ship in position 3:3' do
    @board.put_small_ship_at 3,3
    expect(@board.is_empty? 3,3).to eq false
  end

  it 'should create a large ship in position 3:3' do
    @board.put_large_ship_at 3,3
    expect(@board.is_empty? 3,3).to eq false
  end

  it 'when creating a large ship in position 3:3, it should occupy and 3:4 as well' do
    @board.put_large_ship_at 3,3
    expect(@board.is_empty? 3,4).to eq false
  end

end