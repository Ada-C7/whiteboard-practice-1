#problem #1


def print_array(array)
  i = 0
  print "["
  (array.length - 1).times do
    print array[i]
    print ","
    i += 1
  end
    print array[i]
    print "]"
end

array = [1, 2, 3, 4, 5, 6]
print_array(array)
puts ""


# problem #2

def stretch(array)
  i = 0
  new_array = []
  array.length.times do
    if array[i] == 0
      a = 0
      b = 0
    else
      a = array[i]/2
      b = (array[i] - a)
    end
    new_array << b
    new_array << a
    i += 1
  end
  print new_array
end


array = [10, 9, 8, 0, 12, 15, 2, -10]
stretch(array)
