module BookKeeping
  VERSION = 1
end
require 'prime'

def Prime.nth(num)
  raise ArgumentError if num == 0
  Prime.take(num).last
end

