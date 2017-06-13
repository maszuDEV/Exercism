module BookKeeping
  VERSION = 1
end

class Grains
  attr_reader :grains
  
  def self.square(n)
    @grains = []
    raise ArgumentError if  n <= 0 || n > 64
    (0..63).each { |i| @grains << 2**i }
    @grains[n-1]
  end
  
  def self.total
    @grains.inject(0, :+)
  end

end