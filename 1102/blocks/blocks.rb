require 'pry'

@blocks = [['B','O'],
          ['X','K'],
          ['D','Q'],
          ['C','P'],
          ['N','A'],
          ['G','T'],
          ['R','E'],
          ['T','G'],
          ['Q','D'],
          ['F','S'],
          ['J','W'],
          ['H','U'],
          ['V','I'],
          ['A','N'],
          ['E','R'],
          ['F','S'],
          ['L','Y'],
          ['P','C'],
          ['Z','M']]

def can_make_word word

  word_arr = word.split('')
  all_valid_blocks_arr = []
  saved_blocks = []
  discarded_blocks = []

  word_arr.each do |letter|
    @blocks.each do |block|
      if block.include?(letter)
        all_valid_blocks_arr.push(block)
      end
    end
  end
#  return all_valid_blocks_arr
  if all_valid_blocks_arr.length < word_arr.length
    return false
  else
    all_valid_blocks_arr.each do |block|
      word_arr.each do |letter|
        if block[0] == letter
          if !word_arr.include?(block[1])
            discarded_blocks.push(block)
          else
            saved_blocks.push(block)
          end
        elsif block[1] == letter
          if !word_arr.include?(block[0])
            discarded_blocks.push(block)
          else
            saved_blocks.push(block)
          end
        end
      end
    end
  end
#  return @all_valid_blocks_arr
  if discarded_blocks.length >= word_arr.length
    return true
  else
    discarded_blocks.each do |block|
      word_arr.each do |letter|
        if block.include?(letter)
          word_arr.delete(letter)
        end
      end
    end
    return word_arr
  end
end
binding.pry
