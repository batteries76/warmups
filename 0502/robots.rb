require 'pry'
#require 'time'

class Robot

  def initialize
    @count = 0
    @time_init = Time.now
    letters = ('A'..'Z').to_a[rand(26)] + ('A'..'Z').to_a[rand(26)]
    @name_current = letters + rand(100..999).to_s
    @mac_name = @name_current
    3.times do
      puts @name_current
    end
  end

  def reset
    @time_reset = Time.now
    prev_name = @name_current
    letters = ('A'..'Z').to_a[rand(26)] + ('A'..'Z').to_a[rand(26)]
    @name_current = letters + rand(100..999).to_s
    2.times do
      puts prev_name
    end
    puts "Resetting to factory settings."
    puts @name_current
    @count = @count + 1
  end

  def instruction_count
    puts "Count = #{@count}"
  end

  def timers
    init_diff = Time.now - @time_init
    puts "Time since initialize = #{init_diff.ceil} seconds"
    reset_diff = Time.now - @time_reset
    puts "Time since last reset = #{reset_diff.ceil} seconds"
    return ""
  end

end

binding.pry
