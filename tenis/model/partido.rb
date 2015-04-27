class Partido
  attr_reader :estado_partido

  def initialize(jugador1, jugador2)
    @jugador1 = jugador1
    @jugador2 = jugador2
    @estado_partido = PartidoEnCurso.new()
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
    @estado_partido.punto_para_jugador(@jugador1, @jugador2)
    self.es_fin_de_juego
  end

  def punto_para_jugador2
    @estado_partido.punto_para_jugador(@jugador2, @jugador1)
    self.es_fin_de_juego
  end

  def es_fin_de_juego
    if(@jugador1.sets == 2 || @jugador2.sets == 2)
      @estado_partido = PartidoTerminado.new
    end
  end

end

class EstadoPartido
  def punto_para_jugador(jugador1, jugador2)
  end
end

class PartidoEnCurso < EstadoPartido
  def punto_para_jugador(jugador1, jugador2)
    jugador1.sumar_punto(jugador2)
  end
end

class PartidoTerminado < EstadoPartido
  def punto_para_jugador(jugador1, jugador2)
    raise 'El partido terminó'
  end
end
