# Enter your procedural solution here!
require 'pry'
# def largest_prime_factor(input)
#   largest_prime_factor = 1
#   [*2...(input/2).ceil].each do |num|
#     largest_prime_factor = num if input%num == 0 && is_prime?(num) && largest_prime_factor < num
#   end
#   largest_prime_factor
# end
#
# def is_prime?(num)
#   ![*2..(num/2).ceil].any? {|n| num % n == 0}
# end
#
# largest_prime_factor(50)


def prime_factors(num)
  factors = []
  x = 2
  while num > 1
    while num % x == 0
      factors << x
      num /= x
    end
    x += 1
  end
  factors
end

def find_largest(arr)
  arr.max
end

def largest_prime_factor(input)
  find_largest prime_factors(input)
end
