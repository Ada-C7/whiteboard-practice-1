def print_array(integer_array)
  print "["
  integer_array.each do |val|
    print val
    if val == integer_array[-1]
      print "]"
      return
    end
    print ", "
  end
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)

 #this method only works if the [-1] value is unique
