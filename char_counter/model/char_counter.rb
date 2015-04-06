class CharCounter

  def self.count(word)
    ocurrences = Hash.new
    unless word == nil
      new_word = word.gsub(/\s+/, "").split(//)
      new_word.each { 
        |letter| if ocurrences.has_key?(letter)
          ocurrences[letter] += 1 
        else
          ocurrences[letter] = 1
        end
      }
      end
    ocurrences
  end

end
