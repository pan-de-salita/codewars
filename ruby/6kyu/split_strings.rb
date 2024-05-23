# frozen_string_literal: true

# Complete the solution so that it splits the string into
# pairs of two characters. If the string contains an odd
# number of characters then it should replace the missing
# second character of the final pair with an underscore ('_').

def split_strings(str)
  split_arr = []
  i = 0

  while i < str.length
    split_arr << (str[i] + (str[i + 1] || '_'))
    i += 2
  end

  split_arr
end
