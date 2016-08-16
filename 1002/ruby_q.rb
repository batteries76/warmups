require 'pry'

def convert_roman numeral

  roman_hash = { 'X': 10, 'L': 50 }
  array_l = [ 'X', 'X', 'L' ]

  array_l.each do |letter|

    value = roman_hash[letter.to_sym]
    puts value
    binding.pry
  end
end

convert_roman 'XLX'
