require 'pry'

@foods = ['eggs', 'peannuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollan', 'cats']
@allergies_arr = []

def allergies(num, exp, arr)
  if num > 2**exp
    @allergies_arr.push(@foods[exp])
    return allergies(num-(2**exp), exp-1, @allergies_arr)
  elsif num < 2**exp
    return allergies(num, exp-1, @allergies_arr)
  else
    return @allergies_arr.push(@foods[exp])
  end
end

def to_bin(num)
  exp = find_start(num)
  binary_arr = []
  while exp >= 0
    if num >= 2**exp
      binary_arr.push('1')
      num = num - 2**exp
    else
      binary_arr.push('0')
    end
    exp -= 1
  end
  return binary_arr.join
end

def find_start(num)
  exp = 0
  while num >= 2**exp
    exp = exp + 1
  end
  return exp-1
end

test_arr = allergies(135, 8, [])
bin = to_bin(16)

binding.pry
