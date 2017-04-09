def stretch(array)
  print "["

  for i in 0..array.length-1
    if array[i] % 2 == 0
      print array[i] / 2
    else
      print (array[i] / 2) + 1
    end
    print ", "
    print (array[i] / 2)
    print ", " if i != array.length-1
  end
  
  puts "]"
end

list = [18, 7, 4, 24, 11]
stretch(list)
