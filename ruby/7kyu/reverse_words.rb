# frozen_string_literal: true

# def reverse_words(str)
#   spaces = build_spaces(str)
#   reversed_words = (str.split(' ').map { |word| reverse_word(word) }).join
#   build_reversed_words(spaces, reversed_words).join
# end
#
# def build_spaces(str)
#   spaces_arr = Array.new(str.length)
#   str.chars.each_with_index { |char, idx| spaces_arr[idx] = char if char == ' ' }
#   spaces_arr
# end
#
# def reverse_word(str)
#   reversed_word = ''
#
#   until str.empty?
#     reversed_word += str[str.length - 1]
#     str = str.slice(0, str.length - 1)
#   end
#
#   reversed_word
# end
#
# def build_reversed_words(spaces, reversed_words)
#   char_idx = 0
#
#   spaces.each_with_index do |space, idx|
#     next if space
#
#     spaces[idx] = reversed_words[char_idx]
#     char_idx += 1
#   end
# end

# improved naming via phind
def reverse_words(str)
  word_boundaries = build_boundaries(str)
  reversed_words_parts = build_reversed_words_parts(str)
  build_reversed_words_whole(word_boundaries, reversed_words_parts).join
end

def build_boundaries(str)
  boundary_array = Array.new(str.length)
  str.chars.each_with_index { |char, index| boundary_array[index] = char if char == ' ' }
  boundary_array
end

def build_reversed_words_parts(str)
  str.split(' ').map { |word| reverse_word_part(word) }.join
end

def reverse_word_part(word_part)
  reversed_word_part = ''

  until word_part.empty?
    reversed_word_part += word_part[word_part.length - 1]
    word_part = word_part.slice(0, word_part.length - 1)
  end

  reversed_word_part
end

def build_reversed_words_whole(word_boundaries, reversed_words_parts)
  character_index = 0

  word_boundaries.each_with_index do |boundary, index|
    next if boundary

    word_boundaries[index] = reversed_words_parts[character_index]
    character_index += 1
  end
end

# [^ ] is a negated character class that matches any character except a space.
# By using [^ ]+, we match one or more consecutive characters that are not spaces.
# def reverse_words(str)
#   str.gsub(/([^ ]+)/, &:reverse)
# end
