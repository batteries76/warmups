require 'pry'

def convert_roman numeral

  roman_hash_singles = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX' }
  roman_hash_tens = { 10 => 'X', 40 => 'XL', 50 => 'L', 90 => 'XC' }
  roman_hash_hundreds = { 100 => 'C' 400 => 'CD', 500 => 'D', 900 => 'CM' }
  roman_hash_thousands = { 1000 => 'M' }
  roman_hash_arr = [roman_hash_singles, roman_hash_tens, roman_hash_hundreds, roman_hash_thousands]

  number_arr = number.split('').reverse
#  num_length = number_arr.length

  number_arr.each do |num| i=0

    roman_hash_arr[i]
    if num_length == 1 && (num != 4 && num != 9)
      mod_5 = num % 5

    end
    binding.pry
    i = i + 1
  end
end

convert_roman 8
