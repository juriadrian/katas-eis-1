class Ship

  def get_shot
  end

end

class SmallShip < Ship

  def get_shot
    'Hit'
  end

end

class LargeShip < Ship

  @got_hit = false

  def get_shot
    if(@got_hit)
      'Sink'
    else
      @got_hit = true
      'Hit'
    end
  end

end

class NoShip < Ship

  def get_shot
    'Water'
  end

end