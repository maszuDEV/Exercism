module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @n = n
  end
  
  def primes
    @n >= 2 ? numbers = [nil, nil, *2..@n] : numbers = []
    (2..Math.sqrt(@n)).each do |i|
      (i**2..@n).step(i) { |num| numbers[num] = nil} if numbers[i]
    end
    numbers.compact
  end
end