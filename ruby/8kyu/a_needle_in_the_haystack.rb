# frozen_string_literal: true

# Write a function findNeedle() that takes an array full of junk but containing one "needle"
#
# After your function finds the needle it should return a message (as a string) that says:
#
# "found the needle at position " plus the index it found the needle

def find_needle(haystack)
  haystack.each_with_index { |item, idx| return "found the needle at position #{idx}" if item == 'needle' }
end

puts find_needle(%w[hay junk hay hay moreJunk needle randomJunk])
