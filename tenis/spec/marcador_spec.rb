require 'rspec'
require_relative '../model/marcador.rb'

describe 'Marcador' do

  before(:each) do
    @marcador = Marcador.new
  end

    it 'El partido arranca con el marcador en 0' do
      expect(@marcador.puntos).to eq("0 - 0")
      expect(@marcador.games).to eq("0 - 0")
      expect(@marcador.sets).to eq("0 - 0")
    end

  end