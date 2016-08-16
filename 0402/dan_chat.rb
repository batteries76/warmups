
require 'pry'

loop do
#  He answers 'Sure.' if you ask him a question. He answers 'Whatever.' if you tell him something. He answers 'Woah, chill out!' if you yell at him (ALL CAPS). He says 'Fine. Be that way!' if you address him without actually saying anything.

#Several vowels are always replaced with numbers: a = 4, e = 3, i = 1, o = 0
#Words that start with a consonant start with lower case
#Consonants after the first letter alternate upper and lower case, except the alternation starts over with lowercase after a digit (ex: sCh00l)

  puts = 'Talk to Daniel..'
  chat = gets.chomp
  chat_arr = chat.split('')
  i = 0
  j = 0
  new_chat_arr = []
  if chat.include? "Bro, "
    while j < chat_arr.length
      if chat_arr[j] == 'a'
        new_chat_arr.push('4')
      elsif chat_arr[j] == 'e'
        new_chat_arr.push('3')
      elsif chat_arr[j] == 'i'
        new_chat_arr.push('1')
      elsif chat_arr[j] == 'o'
        new_chat_arr.push('0')
      else
        new_chat_arr.push(chat_arr[j])
      end
    end
    puts new_chat_arr
  end
  cap_flag = 0
#  binding.pry
  while i < chat_arr.length
    if /[[:upper:]]/.match(chat_arr[i])
      cap_flag = 1
    else
      cap_flag = 0
      break
    end
    i += 1
#    binding.pry
  end
  if cap_flag == 1
    puts 'Woah. Chill out.'
  end
  if chat_arr.last == '?'
    puts 'Sure.'
  end
  if chat_arr.last == '.'
    puts 'Whatever.'
  end
  if chat_arr.length < 1
    puts 'Fine. Be that way!'
  end
end
