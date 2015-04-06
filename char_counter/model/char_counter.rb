class CharCounter
  def initialize
    @ocurrences = Hash.new()
  end

  def count(letter)
    ocurrences[letter] = 1
    @ocurrences
  end
end
