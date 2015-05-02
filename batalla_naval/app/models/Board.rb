require_relative '../../app/models/Ship.rb'

class Board
  attr_reader :size

  def initialize(x,y)
    @size = [x,y]
    @grid = Array.new(x) { Array.new(y) { NoShip.new } }
  end

  def put_small_ship_at(x,y)
    @grid[x][y] = SmallShip.new
  end

  def put_large_ship_at(x,y)
    large_ship = LargeShip.new
    @grid[x][y] = large_ship
    @grid[x][y+1] = large_ship
  end

  def is_empty?(x,y)
    @grid[x][y].nil?
  end

  def shoot_at(x,y)
    @grid[x][y].get_shot
  end

end