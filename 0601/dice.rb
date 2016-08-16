require 'pry'

class Dice

#  @remaining = 6
#  @decrementer = 0

  def initialize
  end

  def roll (rolls=1)
    @dice_vals = (1..6).to_a
    @dice_end = []

    rolls.times do
#    rand_num = rand(1..6)
#    @remaining -= 1
      roll_val = @dice_vals[rand(0..5)]
      @dice_end.push(roll_val)
#    @dice_start.delete(roll_val)
    end
    puts @dice_end
    return self
  end

  def sum
    big_arr = []
    val = @dice_end.reduce(:+)
    big_arr[0] = @dice_end
    big_arr[1] = val
    return big_arr
  end

end

binding.pry
