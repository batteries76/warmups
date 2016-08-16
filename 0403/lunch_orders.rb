
require 'pry'

flag = 'y'

# want: orders -> name -> order_arr[]

orders = {

}

while flag == 'y' do

  print "Name for order: "
  name = gets.chomp

  orders[name] = []

  print "#{name} wants to order: "
  order = gets.chomp
  orders["#{name}"].push(order)

  print 'Another order? '
  flag = gets.chomp

end

orders.each do |name|
  name.each do |order|
    puts "#{name} ordered #{'order'}"
  end
end  
