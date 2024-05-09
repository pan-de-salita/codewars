# frozen_string_literal: true

# Your task is to make a function that can take any non-negative
# integer as an argument and return it with its digits in descending
# order. Essentially, rearrange the digits to create the highest
# possible number.

# iter 1
# def descending_order(num)
#   num.digits.sort.reverse.join.to_i
# end

# iter 2
def descending_order(num)
  num_arr = num.digits
  descending_order_helper(num_arr).join.to_i
end

def descending_order_helper(num_arr)
  if num_arr.length <= 1
    num_arr
  elsif num_arr[0] >= descending_order_helper(num_arr.drop(1))[0]
    descending_order_helper(num_arr.drop(1)).unshift(num_arr[0])
  else
    descending_order_helper(num_arr.drop(1).push(num_arr[0]))
  end
end

# iter 3
# TODO: study merge sort
