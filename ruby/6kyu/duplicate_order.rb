# frozen_string_literal: true

# The goal of this exercise is to convert a string to a new
# string where each character in the new string is "(" if that
# character appears only once in the original string, or ")"
# if that character appears more than once in the original string.
# Ignore capitalization when determining if a character is a duplicate.

## iter 1
# def duplicate_encode(word)
#   duplicate_encode_arr([], word.downcase, word.downcase)
# end
#
# def duplicate_encode_arr(arr, str, ref_str)
#   if str.empty?
#     join_encoded_arr(arr)
#   elsif char_in_ref_str(str[0], ref_str) > 1
#     duplicate_encode_arr(arr << ')', str[1..], ref_str)
#   else
#     duplicate_encode_arr(arr << '(', str[1..], ref_str)
#   end
# end
#
# def join_encoded_arr(arr)
#   arr.join
# end
#
# def char_in_ref_str(char, ref_str)
#   if ref_str.empty?
#     0
#   elsif char == ref_str[0]
#     char_in_ref_str(char, ref_str[1..]) + 1
#   else
#     char_in_ref_str(char, ref_str[1..])
#   end
# end

## iter 2
# def duplicate_encode(word)
#   word_in_downcase = word.downcase
#   word_in_downcase.split('').reduce('') do |encoded_word, char|
#     encoded_word + (word_in_downcase.count(char) > 1 ? ')' : '(')
#   end
# end

## iter 3
def duplicate_encode(word)
  char_arr = word.downcase.chars
  char_count = char_arr.each_with_object(Hash.new(0)) { |char, count| count[char] += 1 }
  char_arr.map { |char| char_count[char] > 1 ? ')' : '(' }.join
end

puts duplicate_encode('recede')
