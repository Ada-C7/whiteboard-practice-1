def print_array(array)
  print "["

  for i in 0..array.length-1
    print array[i]
    print ", " if i != array.length-1
  end

  puts "]"
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)
