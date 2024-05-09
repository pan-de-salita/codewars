# frozen_string_literal: true

# This kata is about multiplying a given number by eight
# if it is an even number and by nine otherwise.

def simple_multiplication(number)
  number * (number.even? ? 8 : 9)
end
