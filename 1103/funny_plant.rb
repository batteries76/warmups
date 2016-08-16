require 'pry'

def harvest(people, plants, weeks=1)
  puts plants
  if plants > people
    return weeks
  else
    return harvest(people, plants + orig_fruit(plants, weeks), weeks+1)
  end
end

def orig_fruit(plants, weeks)
  plants += weeks-1 * plants
  return 0 unless weeks>0
  return plants + orig_fruit(plants, weeks-1)
end

binding.pry

# def harvest(people, plants, weeks=0, fruits=[])
# end

  # the total fruits produced by the original fruit = plants * (weeks + weeks-1 + 0)
  # week 1 is always 0
  # week 2 is always the number of plants
  # week 3 is the equation above + a new number of the same
