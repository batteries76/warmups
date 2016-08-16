require 'pry'

def game_of_threes number, num_arr=[], extra_arr=[]

  if number == 1
    puts "1!"
    return 1
  else
    if number % 3 == 0
      puts "#{number} 0"
      number = number / 3
      return game_of_threes number
    elsif (number+1) % 3 == 0
      puts "#{number} +1"
#      puts "Added 1, #{number+1}"
      number = (number+1) / 3
      return game_of_threes number
    else (number+1) % 3 == 0
      puts "#{number} -1"
#      puts "Subtracted 1, #{number-1}"
      number = (number-1) / 3
      return game_of_threes number
    end
  end
end

binding.pry
