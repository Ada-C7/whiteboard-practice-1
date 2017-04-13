# Write a method named `print_array` that accepts an array of integers as a parameter
# and that prints the contents of the array as a bracketed, comma-separated list.
#
# For example, if a variable called list stores the following values:
# `list = [3, 19, 27, 4, 98, 304, -9, 72]`
#
# Then the call of `print(list)` should produce the following output:
# `[3, 19, 27, 4, 98, 304, -9, 72]`
#
# Your method should produce a single line of output (may wrap with long lists).

def print_array(array)
  last_num = array.length - 1
  array.each do |num|
    if num == array[0]
      print "[#{num},"
    elsif num == array[last_num]
      print "#{num}]"
    else
      print "#{num},"
    end
  end
end

# print_array([3, 19, 27, 4, 98, 304, -9, 72])


# Write a method named stretch that accepts an array of integers as a parameter and returns a new array twice as large as the original, where every integer from the original array is replaced with a pair of integers, each half the original.
#
# If a number in the original array is odd, then the first number in the new pair should be one higher than the second so that the sum equals the original number.
#
# For example, if a variable named list refers to an array storing the values [18, 7, 4, 24, 11], the call of stretch(list) should return a new array containing [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]. (The number 18 is stretched into the pair 9, 9, the number 7 is stretched into 4, 3, the number 4 is stretched into 2, 2, the number 24 is stretched into 12, 12 and the number 11 is stretched into 6, 5.)



def stretch(array)
  #this will be the new array
  stretched_array = []
  array.each do |num|
    #goes through each number in array and determines if each number is even
    if num % 2 == 0
      #if even, divide num in 2
      num = num/2
      2.times do
        #puts the number that is equal to /2 the orgicinal twice into the array
        stretched_array << num
      end
    else
      #gets an integer (so it will be the lower of the two numbers)
      num = num/2.to_int #is this too much ruby magic?
      num += 1
      stretched_array << num
      num -= 1 #here's the bigger number
      stretched_array << num
    end
  end
  print stretched_array
end


# Write a method named numUnique that accepts a sorted array of integers as a parameter and utilizes a hash to calculate and return the number of unique values in the array. The array is guaranteed to be in sorted order, which means that duplicates will be grouped together.
#
# For example, if a variable called list stores the following values: list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41] then the call of numUnique(list) should return 9 because this list has 9 unique values (5, 7, 8, 22, 23, 31, 35, 40 and 41).
#
# It is possible that the list might not have any duplicates. For example if list instead stored this sequence of values: list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41] Then a call on the method would return 15 because this list contains 15 different values.
#
# If passed an empty list, your method should return 0.



def numUnique(array)
  #utilizes a hash to return a number of unique vallues in tha array
  #just make an array into a hash because hashes deal with duplicate keys as just making them into one.
  hash = {}
  array.each do |num|
    num == num.key
    hash << num
  end
  print hash
end

numUnique([5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])



# Write a method named numUnique2 that functions the same as numUnique except that it does NOT use a hash to solve the problem. In this version, you should only iterate over the array, but use no auxiliary storage outside of fixnum variables, if needed.
#
# Remember that you can assume that the values in the array appear in sorted (nondecreasing) order.












#TODO
