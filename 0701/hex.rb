
require 'pry'

def hex input
  input_down = input.downcase
  input_arr = input_down.split('')
  input_length = input_arr.length
  2.times do
    input_arr.shift
  end
  a_ten = "atta"
  b_ten = "bibbity"
  c_ten = "city"
  d_ten = "dickety"
  e_ten = "ebbity"
  f_ten = "fleventy"
  a_unit = "ay"
  b_unit = "bee"
  c_unit = "cee"
  d_unit = "dee"
  e_unit = "ee"
  f_unit = "eff"
  said = []
  counter = 0

  if input_length = 2
    input_arr.each do |x|
      if counter = 0
        case x
        when "a" = said.push(a_unit)
        when "b" = said.push(b_unit)
        when "c" = said.push(c_unit)
        when "d" = said.push(d_unit)
        when "e" = said.push(e_unit)
        when "f" = said.push(f_unit)
      elsif counter = 1
        when "a" = said.push(a_ten)
        when "b" = said.push(b_ten)
        when "c" = said.push(c_ten)
        when "d" = said.push(d_ten)
        when "e" = said.push(e_ten)
        when "f" = said.push(f_ten)
      end
    end
  end
end
