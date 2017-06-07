module BookKeeping
  VERSION = 2
end

class Fixnum
  
  SYMBOLS = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C", 90 => "XC",
             50 => "L", 40 => "XL", 10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
  
  def to_roman
  n = self
  final = ""
    SYMBOLS.each do |arabic, roman| 
      final << roman*(n/arabic)
      n = n % arabic
    end
    return final
  end
  
end