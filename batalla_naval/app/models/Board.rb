class Board
  attr_reader :size

  def initialize(x,y)
    @size = [x,y]
    @grid = Array.new(x) { Array.new(y) }
  end

  def put_small_ship_at(x,y)
    @grid[x][y] = 'smallBoat'
  end

  def is_empty(x,y)
    @grid[x][y].nil?
  end

end