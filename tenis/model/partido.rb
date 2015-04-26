class Partido

  def initialize(jugador1, jugador2)
    @jugador1 = jugador1
    @jugador2 = jugador2
  end

  def puntos_jugador1
    @jugador1.puntos
  end

  def puntos_jugador2
    @jugador2.puntos
  end

  def games_jugador1
    @jugador1.games
  end

  def games_jugador2
    @jugador2.games
  end

  def sets_jugador1
    @jugador1.sets
  end

  def sets_jugador2
    @jugador2.sets
  end

  def punto_para_jugador1
    @jugador1.sumar_punto(@jugador2)
  end

  def punto_para_jugador2
    @jugador2.sumar_punto(@jugador1)
  end

end