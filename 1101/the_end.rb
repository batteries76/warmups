require 'pry'

the_end = Time.new(2016, 06, 03, 17)

now = Time.now

while true
  sleep(1)
  the_end = Time.new(2016, 06, 03, 17)
  now = Time.now
  diff = the_end - now
  days = (diff/60/60/24).floor
  hours = ((diff-(days*60*60*24))/60/60).floor
  mins = ((((diff-(days*60*60*24))-(hours*60*60))/60)).floor
  secs = (diff-(days*60*60*24)-(hours*60*60)-(mins*60)).floor

#  puts "diff = #{diff}"
  puts "days = #{days}"
  puts "hours = #{hours}"
  puts "mins = #{mins}"
  puts "secs = #{secs}"
  puts ""

end

binding.pry
