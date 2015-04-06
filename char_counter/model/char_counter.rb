class CharCounter

  def self.count(letter)
    ocurrences = Hash.new()
    ocurrences[letter] = 1
    ocurrences
  end

end
