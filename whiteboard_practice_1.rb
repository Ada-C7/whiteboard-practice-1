## Problem #1

def print_array(array)

  new_print = "["
  index = 0

  (array.length).times do
    new_print << array[index].to_s
    new_print << ", "
    index += 1
  end

  new_print << "]"
  print new_print
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)

## Problem #2

def stretch(array)
  new_array = []
  index = 0

  array.length.times do
    if array[index] % 2 == 0
      2.times do
        new_array << array[index] / 2
      end
    else
      new_array << array[index] / 2 + 1 << array[index] / 2
    end
    index += 1
  end

  return new_array
end

list = [18, 7, 4, 24, 11]
stretched_list = stretch(list)

print stretched_list

## Problem #3

##This solution works
def numUnique(array)

  if array.length == 0
    return 0
  end

  uniques = {}

  array.each do |num|
      uniques[num] = 1
  end

  return uniques.length
end

##something I was working on to try and increase the value as a counter for each key - not working
# def numUnique(array)
#   if array.length == 0
#     return 0
#   end
#   uniques = {}
#   marker = 0
#   array.each do |num|
#     comp = array[marker += 1]
#     if num != comp
#       uniques[num] = 1
#       #print uniques.keys
#     elsif uniques[num] == comp
#       uniques[num] = num.value += 1
#       # value = uniques[num]
#       # value = value += 1
#     end
#     marker += 1
#   end
#   print uniques
#   return uniques.length
# end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique(list)
puts "above should return 9"
list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique(list)
puts "above should return 15"
list = [4, 4, 4, 4]
puts numUnique(list)
puts "above should return 1"
list = []
puts numUnique(list)
puts "above should return 0"


## Problem #4

def numUnique2(array)

  unique_count = 0

  (0...array.length).each do |num|
    if array[num] != array[num + 1]
      unique_count += 1
    end
  end
  return unique_count
end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts numUnique2(list)
puts "above should return 9"
list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
puts numUnique2(list)
puts "above should return 15"
list = [4, 4, 4, 4]
puts numUnique2(list)
puts "above should return 1"
list = []
puts numUnique2(list)
puts "above should return 0"
