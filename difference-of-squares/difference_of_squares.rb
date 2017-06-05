module BookKeeping
  VERSION = 3
end

class Squares
  
  def initialize(n)
    @num = n
  end
  
  def square_of_sum
    sum = 0
    (1..@num).each { |s| sum += s }
    sum**2
  end
  
  def sum_of_squares
    sum = 0
    (1..@num).each { |s| sum += s**2 }
    return sum
  end
  
  def difference
    self.square_of_sum - self.sum_of_squares
  end
  
end