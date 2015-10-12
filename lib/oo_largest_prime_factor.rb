# Enter your object-oriented solution here!
class LargestPrimeFactor
  attr_accessor :input
  def initialize(input)
    @input = input
  end

  def prime_factors
    factors = []
    x = 2
    while @input > 1
      while @input % x == 0
        factors << x
        @input /= x
      end
      x += 1
    end
    factors
  end

  def find_largest(arr)
    arr.max
  end

  def number
    find_largest prime_factors
  end
end
