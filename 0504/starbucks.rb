
require 'pry'

class Coffee

  def initialize(type, num_sugars, size, name)
    @type = type
    @num_sugars = num_sugars
    @size = size
    @name = name
  end

  def name_mangle(name)
    alpha = ("a".."z").to_a
    misspel_arr = []
    name_down = @name.downcase
    new_arr = name_down.split('')
    new_arr.each do |char|
      if char == "b"
        misspell_arr.push("d")
      elsif char == "f"
        misspell_arr.push("v")
      elsif char == ("l")
        misspell_arr.push("r")
      elsif char == ("a")
        misspell_arr.push("o")
      elsif char == "d"
        misspell_arr.push("p")
      else
        misspell_arr.push(char)
      end
    end
    misspell_name = misspell_arr.join
    cap_misspell = misspell_name.capitalize
    return cap_mispell
  end

  def to_s
    sleep(rand(2..5))
    name_mangled = name_mangle(@name)
    puts "#{name_mangled}\'s #{@type}, #{@size} and #{@num_sugars}."
  end
end
binding.pry
