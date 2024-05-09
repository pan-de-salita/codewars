# frozen_string_literal: true

# # Define a function that takes an integer argument and
# returns a logical value true or false depending on if
# the integer is a prime.
#
# Per Wikipedia, a prime number ( or a prime ) is a natural
# number greater than 1 that has no positive divisors other
# than 1 and itself.

# iter 1
# def isPrime(num)
#   return true if num == 2
#   return false if num <= 1 || num.even?
#
#   divisor = 3
#   while divisor <= num / 2
#     return false if (num % divisor).zero?
#
#     divisor += 2
#   end
#
#   true
# end

# iter 2
# NOTE: optimized code by phind
def prime?(num)
  return true if num == 2
  return false if num <= 1 || num.even?

  (3..Math.sqrt(num)).step(2) do |divisor|
    return false if (num % divisor).zero?
  end

  true
end
