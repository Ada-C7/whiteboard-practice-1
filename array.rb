#Problem 1
def print_array(array)
  length = array.length
  counter = 1
  print "["
  array.each do |n|
    if counter == length
      print n
    else
      print n
      print ", "
      counter += 1
    end
  end
  print "]"
end

#Problem 2
def stretch(array)
  new_array = []

  array.each do |n|
   half = n/2
   if half + half != n
     new_array << half + 1
   else
     new_array << half
   end
    new_array << half
  end

  return new_array
end

#Problem 3
def numUnique(list)
  a = {}
  list.each do |n|
    a[n] = 1
  end
  return a.length
end

#Problem 4
def numUnique2(list)
  fixnum = 0
  index = 0
  num = list.length - 1
  if list.length != 0
    num.times do |n|
      if list[index] != list[index + 1]
        fixnum += 1
      end
      index += 1
    end
    return fixnum + 1
  else
    return 0
  end
end
