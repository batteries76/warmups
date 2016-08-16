require 'pry'

puts "Enter a phrase: "
phrase = gets.chomp

def typogly phrase
  counter = 0
  word_arr = [[]]
  punct_arr = []
  phrase_arr = phrase.split('')
  flag = 1
  phrase_arr.each do |c|
    if /[.|,|" "]/.match(c)
#      binding.pry
      punct_arr.push(c)
      if flag
        word_arr.push([])
        flag = 0
        counter = counter + 1
      end
    else
#      binding.pry
      word_arr[counter].push(c)
      flag = 1
    end
  end

  word_arr.each do |arr|
    

  print word_arr
  print punct_arr
  puts "here"

end

typogly("tuyet, dhj djhkjd, djhkd.")
