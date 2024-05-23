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
# def high_and_low(numbers)
#   numbers_arr = numbers.split(' ').map(&:to_i)
#   highest = numbers_arr.max
#   lowest = numbers_arr.min
#   "#{highest} #{lowest}"
# end

# iter if number were an array
def high_and_low(num_arr)
  highest = num_arr[0]
  lowest = num_arr[0]

  num_arr.each do |num|
    highest = num > highest ? num : highest
    lowest = num < lowest ? num : lowest
  end

  [highest, lowest]
end
