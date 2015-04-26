require 'rspec'
require_relative '../model/marcador.rb'
require_relative '../model/jugador.rb'
require_relative '../model/partido.rb'

describe 'Marcador' do

  before(:each) do
    @jugador1 = Jugador.new
    @jugador2 = Jugador.new
    @partido = Partido.new(@jugador1, @jugador2)
    @marcador = Marcador.new(@partido)
  end

  it 'El partido arranca con el marcador en 0' do
    expect(@marcador.puntos).to eq('0 - 0')
    expect(@marcador.games).to eq('0 - 0')
    expect(@marcador.sets).to eq('0 - 0')
  end

  it 'Cuando un jugador gana un game, los puntos vuelven a 0-0' do
    expect(@marcador.games).to eq('0 - 0')
    @marcador.punto_para_jugador1
    expect(@marcador.puntos).to eq('15 - 0')
    @marcador.punto_para_jugador1
    expect(@marcador.puntos).to eq('30 - 0')
    @marcador.punto_para_jugador1
    expect(@marcador.puntos).to eq('40 - 0')
    @marcador.punto_para_jugador1
    expect(@marcador.puntos).to eq('0 - 0')
    expect(@marcador.games).to eq('1 - 0')
  end

  it 'Cuando ambos jugadores tienen 40 puntos y jugador1 hace un punto, tiene ventaja' do
    @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1

    @marcador.punto_para_jugador2
    @marcador.punto_para_jugador2
    @marcador.punto_para_jugador2

    @marcador.punto_para_jugador1
    expect(@marcador.puntos).to eq('40 - 40')
    @jugador1.has_adv.should be true
  end

  it 'Cuando jugador1 tiene ventaja y jugador2 hace un punto, jugador1 pierde la ventaja' do
    @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1

    @marcador.punto_para_jugador2
    @marcador.punto_para_jugador2
    @marcador.punto_para_jugador2

    @marcador.punto_para_jugador1
    @jugador1.has_adv.should be true
    @marcador.punto_para_jugador2
    @jugador1.has_adv.should be false
  end

  it 'Cuando un jugador gana un set, los games vuelven a 0-0 y lo mismo ocurre con los puntos' do
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1
    @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1; @marcador.punto_para_jugador1

    expect(@marcador.sets).to eq ('1 - 0')
    expect(@marcador.games).to eq ('0 - 0')
    expect(@marcador.puntos).to eq('0 - 0')
  end
end