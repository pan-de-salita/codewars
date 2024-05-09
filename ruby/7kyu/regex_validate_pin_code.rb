# frozen_string_literal: true

# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot
# contain anything but exactly 4 digits or exactly 6 digits.
#
# If the function is passed a valid PIN string, return true, else return false.

### regex practice

# find the word 'like'
'Do you like cats?' =~ /like/

puts 'Match found!' if 'Do you like cats?'.match(/like/)

## character classes
# - lets us define a range or a list of characters to match

# does the string contain a vowel?
def contains_vowel(str)
  str =~ /[aeiou]/
end

contains_vowel('test') # returns 1
contains_vowel('sky') # returns nil

## ranges
# - lets us match multiple letters or numbers without having
# to type them all out

# does this string contain any numbers?
def contains_numbers(str)
  str =~ /[0-9]/
end

contains_numbers('The year is 2015') # returns 12
contains_numbers('The cat is black') # returns nil

# nice shorthand syntax for specifying character ranges:
# - \w is equivalent to [0-9a-zA-Z_]
# - \d is equivalent to [0-9]
# - \s matches white space (tabs, regular space, newline)
# - \W anything that is not in \w
# - \D anything that is not a number
# - \S anything that's not a space
# - . matches everything but new lines

# esacping special characters
'5a5'.match(/\d.\d/) # returns match

# in this case only the literal dot matches
'5a5'.match(/\d\.\d/) # returns nil
'5.5'.match(/\d\.\d/) # returns match

## modifiers
## - lets us match multiple characters

# + | 1 or more
# * | 0 or more
# ? | 0 or 1
# {3, 5} | between 3 and 5

# does this look like an IP address?
# note that this will also match some invalid IP addresses
# like 999.999.999.999, but in this case we just care about
# the format

def ip_address?(str)
  # the $ symbol at the end of the regex asserts the end
  # of the string, ensuring that the pattern matches the
  # entire string from start to finish. without it, the
  # regex would match any string that starts with a valid
  # IPv4 address, even if it continues wiht additional characters
  # after the last octet of the IP address.
  #
  !!(str =~ /^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$/)
end

ip_address?('192.168.1.1')
ip_address?('0000.0000')

## exact string method

# we want to find if this string is exactly four letters long,
# this will match because it has more than four, but it's not
# what we want.
'Regex are cool'.match(/\w{4}/)

# instead, we will use the 'beginning of line' and 'end of line' modifiers
'Regex are cool'.match(/^\w{4}$/)

# to match strictly at the start of a string and not just on every line
# (after a \n) you need to use \A and \Z instead of ^ and $.

## capture groups
# - lets us capture part of a match and reuse it later. to capture a
# matches we enclose the part we want to capture in parenthesis.

# parsing a log file
Line = Struct.new(:time, :type, :msg)
LOG_FORMAT = /(\d{2}:\d{2}) (\w+) (.*)/.freeze

def parse_line(line)
  line.match(LOG_FORMAT) { |m| Line.new(*m.captures) }
end

puts parse_line('12:41 INFO User has logged in.')

# TODO: learn more about capture groups

# - (?:...) | non-capturing group
# - (?<foo>...) | named group

# names groups
m = 'David 30'.match(/(?<name>\w+) (?<age>\d+)/)

## look ahead and look behind
# - lets us see if there is a specific match before or after

# (?=pat) | positive lookahead
# (?<=pat) | positive lookbehind
# (?!pat) | negative lookahead
# (?<!pat) | negative lookbehind

# is there a number preceded by at least one letter?
def number_after_word?(str)
  !!(str =~ /(?<=\w) (\d+)/)
end

number_after_word?('Grade 99')

def validate_pin(pin)
  # !!pin.match(/\A\d{4}$\Z/) || !!pin.match(/\A\d{6}\Z/)
  pin.match?(/\A\d{4}\Z|\A\d{6}\Z/)
end

puts validate_pin('')
puts validate_pin('1')
puts validate_pin('1234')
puts validate_pin('123456')
puts validate_pin('1234567890')
puts validate_pin('12')
