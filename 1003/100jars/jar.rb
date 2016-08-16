require 'pry'

# inital state is open
# all primes will be open
# all evens factored numbers will be closed

final_array = []
(1..100).each do |num|
  num_array = (1..num).select { |n|num % n == 0}
  if num_array.length % 2 != 0
    final_array.push(num)
  end
end

# binding.pry

# final_jars = []
# (1..100).each do |num|
#   num_array = (1..num).select { |n|num % n == 0}
#   if num_array.length % 2 == 0
#     final_jars.push("#{num} is open")
#   else
#     final_jars.push("#{num} is closed")
#   end
# end

binding.pry
