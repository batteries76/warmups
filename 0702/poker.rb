require 'pry'

puts "How many players?"
players = gets.chomp

def poker(players)
  deck = [ "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "Th", "Jh", "Qh", "Kh", "Ah", "2c", "3c", "4c", "5c", "6c", "7c", "8c", "9c", "Tc", "Jc", "Qc", "Kc", "Ac", "2d", "3d", "4d", "5d", "6d", "7d", "8d", "9d", "Td", "Jd", "Qd", "Kd", "Ad", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s", "Ts", "Js", "Qs", "Ks", "As"]

  num_play = players

  num_deal = players * 2


  counter2 = 0

  table_hand = []

  num_play.times do
    table_hand.push(["", ""])
  end

  num_play.times do |index|
    new_card = deck.sample
#    puts new_card
#    puts index

    deck.delete(new_card)
    table_hand[index][0] = new_card
#        p table_hand
  end

  num_play.times do |index|
    new_card = deck.sample
    deck.delete(new_card)
        # puts new_card
        # puts index
    table_hand[index][1] = new_card
  end

  return table_hand
end



binding.pry
