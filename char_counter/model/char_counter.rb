class CharCounter

  def self.count(word)
    ocurrences = Hash.new
    new_word = word.split(//)
    new_word.each { 
      |letter| if ocurrences.has_key?(letter)
        ocurrences[letter] += 1 
      else
        ocurrences[letter] = 1
      end
    }
    ocurrences
  end

end
