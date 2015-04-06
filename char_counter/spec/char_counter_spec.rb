require 'rspec'
require_relative '../model/char_counter.rb'

describe 'CharCounter' do
  
  it 'should return {a=>1} when string is a' do
    dic = CharCounter.count('a')
    dic['a'].should be 1
  end

end
