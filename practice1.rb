
# problem 1
array = [1,2,3,5,6]

def print_array(array)
  print "["
  array.each_with_index do | num, index |
    print num
    if index != (array.length)-1
      print ", "
    else
      print "]"
    end
  end
end

print print_array(array)


# problem 2


array = [2,3,4,7,9]

def stretch(array)
  result =[]

  array.each do |num|
    num1 = num/2
    num2 = num - num1

    result.push(num2)
    result.push(num1)
  end
  return result
end

print stretch(array)
