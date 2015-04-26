class Marcador

  def initialize(partido)
    @partido = partido
  end

  def puntos
    @partido.puntos_jugador1.to_s + ' - ' + @partido.puntos_jugador2.to_s
  end

  def games
    @partido.games_jugador1.to_s + ' - ' + @partido.games_jugador2.to_s
  end

  def sets
    @partido.sets_jugador1.to_s + ' - ' + @partido.sets_jugador2.to_s
  end

  def punto_para_jugador1
    @partido.punto_para_jugador1
  end

  def punto_para_jugador2
    @partido.punto_para_jugador2
  end

end