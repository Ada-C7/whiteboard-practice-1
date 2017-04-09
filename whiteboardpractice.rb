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

print_array([3, 19, 27, 4, 98, 304, -9, 72])


# Write a method named stretch that accepts an array of integers as a parameter and returns a new array twice as large as the original, where every integer from the original array is replaced with a pair of integers, each half the original.
#
# If a number in the original array is odd, then the first number in the new pair should be one higher than the second so that the sum equals the original number.
#
# For example, if a variable named list refers to an array storing the values [18, 7, 4, 24, 11], the call of stretch(list) should return a new array containing [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]. (The number 18 is stretched into the pair 9, 9, the number 7 is stretched into 4, 3, the number 4 is stretched into 2, 2, the number 24 is stretched into 12, 12 and the number 11 is stretched into 6, 5.)



def stretch


end 
