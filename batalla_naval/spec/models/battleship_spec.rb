require_relative '../../app/models/Board.rb'
require_relative '../../app/models/Ship.rb'
require_relative '../spec_helper.rb'

describe 'Battleship' do

  before (:each) do
    @board = Board.new 5,5
    @board.put_small_ship_at 1,1
    @board.put_large_ship_at 2,2
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

  it 'when shooting at 1:1, should hit a small boat' do
    expect(@board.shoot_at 1, 1).to eq 'Hit'
  end

  it 'when shooting at 1:4, should hit water' do
    expect(@board.shoot_at 1, 4).to eq 'Water'
  end

  it 'when shooting at 2:2 and 2:3, should sink a large ship' do
    expect(@board.shoot_at 2, 2).to eq 'Hit'
    expect(@board.shoot_at 2, 3).to eq 'Sink'
  end

end