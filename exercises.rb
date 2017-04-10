#Problem #1
def print_array(array)
  print "["
  (0...array.length).each do |i|
    print array[i]
    if i != array.length - 1
      print ", "
    else
      print "]"
    end
  end
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)
puts
#Problem #2

def stretch(array)
  new_array = []
  (0...array.length).each do |i|
    n = array[i]/2
    new_array << array[i] - n
    new_array << n
  end
  return new_array
end

list =  [18, 7, 4, 24, 11]
print stretch(list)
puts

#Problem #3
def num_unique(array)
  if array.length == 0
    return 0
  end
  hash = Hash.new
  array.each do |num|
    hash[num] = 1
  end
  return hash.length
end


list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts num_unique(list)

#Problem #4
def num_unique2(array)
  if array.length == 0
    return 0
  end
  counter = 0
  (0...array.length).each do |i|
    if array[i] != array[i+1]
      counter += 1
    end
  end
  return counter
end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
puts num_unique2(list)
