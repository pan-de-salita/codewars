# frozen_string_literal: true

# Implement a function that accepts 3 integer values a, b, c.
# The function should return true if a triangle can be built
# with the sides of given length and false in any other case.

# iter 1
def is_triangle(a, b, c)
  return false if a.negative? || b.negative? || c.negative?

  perimeter = (a + b + c) / 2.0
  expression = perimeter * (perimeter - a) * (perimeter - b) * (perimeter - c)

  return false if expression.negative?

  puts Math.sqrt(expression)
  Math.sqrt(expression).positive?
end

puts is_triangle(-1, 8, 8)
