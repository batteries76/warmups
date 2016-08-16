require 'pry'

def get_squares num_arr

  root_arr = []
  non_int_root_arr = []

  num_arr.each do |num|

    root = Math.sqrt(num)

    if root % 1 == 0
      root = root.round
      if !root_arr.include? root
        root_arr.push(root)
      end
    else
      non_int_root_arr.push(root)
    end
  end
  print non_int_root_arr
  print root_arr
  return root_arr.sort
end

binding.pry
