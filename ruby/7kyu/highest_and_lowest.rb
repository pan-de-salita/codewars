# frozen_string_literal: true

# In this little assignment you are given a string of space
# separated numbers, and have to return the highest and lowest number.

# iter 1
# def high_and_low(numbers)
#   numbers_arr = numbers.split(' ').map(&:to_i)
#   highest = 0
#   lowest = 0
#
#   numbers_arr.each do |number|
#     if number >= highest
#       highest = number
#     elsif number <= lowest
#       lowest = number
#     else
#       next
#     end
#   end
#
#   highest.to_s + ' ' + lowest.to_s
# end

# iter 2
def high_and_low(numbers)
  numbers_arr = numbers.split(' ').map(&:to_i)
  highest = numbers_arr.max
  lowest = numbers_arr.min
  "#{highest} #{lowest}"
end
