
require 'pry'

def caesar(str, shift)
  alpha = ("A".."Z").to_a
  str_arr = str.upcase.split('')
  decode_str = []
  str_arr.each do |char|
    char_num = char.ord
    if(char_num < 65 || char_num > 90)
      new_ord = char_num
#      puts "dont be here"
    elsif (shift + char_num > 90)
      new_ord = char_num + shift - 26
    elsif
      new_ord = char_num + shift
    end
#    binding.pry
    new_char = new_ord.chr
#    binding.pry
    decode_str.push(new_char)

#    binding.pry
  end
  decode_str = decode_str.join
  puts decode_str
  return decode_str
  binding.pry
end

binding.pry
