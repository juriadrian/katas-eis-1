class Jugador
  attr_accessor :puntos
  attr_accessor :games
  attr_accessor :sets
  attr_accessor :has_adv

  def initialize
    @puntos = 0
    @games = 0
    @sets = 0
    @has_adv = false
  end

  def sumar_punto(otro_jugador)
    case @puntos
      when 0,15
        @puntos += 15
      when 30
        @puntos += 10
      when 40
        if(otro_jugador.puntos == 40)
          if @has_adv
            self.sumar_game(otro_jugador)
            @has_adv = false
          elsif otro_jugador.has_adv
            otro_jugador.has_adv = false
          else
            @has_adv = true
          end
        else
          self.sumar_game(otro_jugador)
        end
    end
  end

  def sumar_game(otro_jugador)
    @puntos = 0
    otro_jugador.puntos = 0
    @games += 1
  end
end
