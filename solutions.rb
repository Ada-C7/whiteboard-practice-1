##########################
# Whiteboard Problem # 1
##########################

# Summary of my whiteboard notes:

# Understanding:
# Want a function that takes in an array of integers and returns a string with the proper array syntax
# proper syntax means: bracketed, comma-separated lis
# Example: print_array takes in [1,2,3] and returns a string "[1, 2, 3]"

# Assumptions:
# you will be given array with elemens of the integer class so you will need to turn this integers in to a string
# if given strings this wont cause a problem but would be a unnessary step
# Can't use rray built in methods with ruby
# Can't use print
# IE Should be using condtions, loops, and indexing

# Startegy
# Will need to isolate each item - turn it into an string and combine these elements into one string
  # Initial thoughts - use a loop and indexing
# will need to add a comma after all numbers but the last one
  # can use a condition to check if we are at the last integer
# will need to add [] at the start and end
  # string interpolation could be helpful

# Psuedo code
# loop until you have reach the last element
# In the loop look at each element by index and turn the element to into a string
  # add this to a result variable (can use string interpolation)
  # if not the last element add a comma
# after the loop as finished add the brackets before and after the variable of the list of numbers

# Code :)
def print_array(arr)
  n = 0
  result = ""
  until arr[n] == nil
    arr[n]
    result = result + "#{arr[n]}"
    if arr[n] != arr[-1]
      result += ", "
    end
    n += 1
  end
  final = "[" + result + "]"
end

# p print_array([1,2,3,4,5])


###############
## Problem #2
###############

# Question Understanding:
# Input is an array of integers
# Output is an array of integers, twice the size of input
# these integers are derived from the orginal numbers - you take the orginal integers
# divide it in half. # if the original number is odd, you do NOT use .5, IE 7 becomes 3 and 4, 9 becomes 4 and 5

# Example
# input [1, 2, 6, 13]
# output [1?, 1, 1, 3, 3, 6, 7]

# Questions and assumptions:
# what to do with 1 or will you not be given the number 1
# 0? Negative numbers?

# will make it easier on myself and assume set of natural numbers greater and equal to two

#Psuedo Code:
# iterate through the array by each integer
# divide each integer by 2 to determine the addends
# push the two addends into a results array

# Code
def stretch(list)
  result = []
  list.each do |integer|
    addend1 = integer / 2
    addend2 = integer - addend1
    result << addend1 << addend2
  end
  return result
end

p stretch([2, 6, 13])
p stretch([18, 7, 4, 24, 11])
