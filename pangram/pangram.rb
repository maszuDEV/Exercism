module BookKeeping
  VERSION = 4
end

class Pangram
  
  def self.pangram?(phrase)
    if phrase.empty?
      false
    else
    remaining_letters = ("a".."z").to_a - phrase.downcase.scan(/[a-zA-Z\d*]/)
    true if remaining_letters.empty?
    end
  end
  
end