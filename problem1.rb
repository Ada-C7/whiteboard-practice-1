
## Problem #1
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
  end_num = array.length - 1
  array.each do |num|
    if num == array[0]
      print "[#{num},"
    elsif num == array[end_num]
      print "#{num}]"
    else
      print "#{num},"
    end
  end
end
