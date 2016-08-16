
require 'pry'

alpha = ("a".."z").to_a
#word = gets.chomp
possible = 0
index = 1

word = "acbba"
word_arr = word.split('')
#print word_arr

def left_weight(index, word_arr, alpha)
  starting_index = index
#  puts "word_arr[starting_index] = #{word_arr[starting_index]}"
  left_side_weight = 0
  while(index>0)
    index -= 1
    differential = starting_index - index
#    puts "differential = #{differential}"
    letter_weight = alpha.index(word_arr[index]).to_i + 1
#    puts "letter_weight = #{letter_weight}"
    left_side_weight += letter_weight*differential
  end
#  puts "left_side_weight = #{left_side_weight}"
  return left_side_weight
end

def right_weight(index, word_arr, alpha)
  starting_index = index
  index+=1
  right_side_weight = 0
  while(index<word_arr.length)
    differential = index - starting_index
#    puts "differential = #{differential}"
    letter_weight = alpha.index(word_arr[index]).to_i + 1
#    puts "letter_weight = #{letter_weight}"
    right_side_weight += letter_weight*differential
    index += 1
  end
#  puts "right_side_weight = #{right_side_weight}"
  return right_side_weight
end
#left_weight(2, word_arr, alpha)
#right_weight(2, word_arr, alpha)


def balance(alpha)
  word = gets.chomp
  word_length = word.length
  word_arr = word.split('')
  i = 1
  while (i<word_length)
    left_w = left_weight(i, word_arr, alpha)
    right_w = right_weight(i, word_arr, alpha)
    balance_now = left_w - right_w
#    puts "balance_now = #{balance_now}"
    i+=1
    if (i >= word_length)
      puts "#{word} did not balance!"
      break
    end
    if balance_now == 0
      i -= 1
      puts "This word balances around #{word_arr[i]} at position #{i}!"
      puts "The balance weight is #{left_w}"
      i -= 1
      left_arr = word_arr[0..i]
      puts "left_arr = #{left_arr}"
      i += 2
      word_length -= 1
      right_arr = word_arr[i..word_length]
      puts "right_arr = #{right_arr}"
      break
    end
  end
end

balance(alpha)

# right_weight()
#
# while (true)
#   word_arr = word.split('')
#   while (true)
#     left_weight = 0
#   end
# end
