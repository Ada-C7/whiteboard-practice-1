# problem 1

def print_array(array)
  # for each element in array
  index = 0
  result = ""
  result << "["
  array.length.times do
    result << array[index].to_s
    result << ","
    result << " "
    index += 1
  end
  result = result[0..-3]
  result << "]"
  puts result

end
# testing = [1,2,3,4,5]
# puts print_array(testing)

# problem 2
def stretch(array)
  # given an array of integers
  # mod 2 check to see if integer is odd or even
  # if odd, divide by 2, push half + 1 into result, push half into result
  # if even, divide by 2, push half into result 2 times
  # move index to next element

  result = []
  index = 0
  first_half = 0
  second_half = 0
  array.length.times do
    second_half = array[index]/2
    if array[index] % 2 == 0 # even num
      first_half = array[index]/2
    else
      first_half = (array[index]/2) + 1
    end
    result << first_half
    result << second_half
    index += 1
  end
  puts "original array: #{array}"
  puts "result array: #{result}"
end

# testing = [2,3,6,5,88,46,13]
# puts stretch(testing)


# problem 3

def numUnique(array)
  result = Hash.new(0)
  index = 0
  array.length.times do
    result[array[index]] += 1
    index += 1
  end
  return result.length
end

# testing = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
# puts numUnique(testing)



# problem 4

def numUnique2(array)
  if array.length == 0
    return 0
  else
    result = 0
    index = 1
    last_num = array[0]
    array.length.times do
      if array[index] != last_num # if the second # is not the same as the first, increase the result count
        result += 1
        last_num = array[index]
        index += 1
      else
        last_num = array[index]
        index += 1
      end
    end


    return result
  end
end

# testing = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
# puts numUnique2(testing)
