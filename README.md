# Whiteboard Practice 1
Problems that focus on avoiding Ruby Magic and properly using Hashes and Arrays

For each of the following problems, you should write a single method to solve
the problem. You will be working with arrays in each problem, but should use
array indexing and loops to solve the problems. You should **not** utilize
any [Ruby Array methods](https://ruby-doc.org/core-2.2.0/Array.html), with
the exception of `<<`, `[]`, and `.length`.

e.g. NOT OK

- `array.first` ==> NOT OK
- `array.insert(i, array2[loc])` ==> NOT OK
- `array.pop` ==> NOT OK
- `array.uniq` ==> NOT OK ;) See problem 3 and 4.

e.g. OK

- `array[i] = array2[loc]` ==> OK
- `puts array[0]` ==> OK
- `array[-1]` ==> OK

## Problem #1
Write a method named `print_array` that accepts an array of integers as a parameter
and that prints the contents of the array as a bracketed, comma-separated list.

For example, if a variable called list stores the following values:
`list = [3, 19, 27, 4, 98, 304, -9, 72]`

Then the call of `print(list)` should produce the following output:
`[3, 19, 27, 4, 98, 304, -9, 72]`

Your method should produce a single line of output (may wrap with long lists).

q: should spaces between numbers included in the printed result?
q: what should be printed in case of empty array?
q: should the result be a single string?

def print_array(list)
 #print opening bracket
 #loop throught the list of integers in the array
  #print integer
  #print comma after integer, except for the last digit
 #print the closing bracket
end

def print_array(list)
  print "["
  list.each_with_index do |num, index|
    print num
    unless (index + 1) == list.length
      print ","
    end
  end
  print "]\n"
end

#I'm not sure if each_with_index is a Ruby magic (is it?), so I came up with an alternative solution, too

def print_array(list)
  print "["
  index = 1
  list.each do |num|
    print num
    unless index == list.length
      print ","
    end
    index += 1
  end
  print "]\n"
end

## Problem #2
Write a method named `stretch` that accepts an array of integers as a
parameter and returns a **new** array twice as large as the original, where
every integer from the original array is replaced with a pair of integers,
each half the original.

If a number in the original array is odd, then the first number in the new
pair should be one higher than the second so that the sum equals the
original number.

For example, if a variable named list refers to an array storing the
values [`18, 7, 4, 24, 11]`, the call of `stretch(list)` should return
a new array containing `[9, 9, 4, 3, 2, 2, 12, 12, 6, 5]`. (The number 18
is stretched into the pair 9, 9, the number 7 is stretched into 4, 3,
the number 4 is stretched into 2, 2, the number 24 is stretched into 12,
12 and the number 11 is stretched into 6, 5.)

q: how to split 0?
q: how to split negative numbers? (should both ebnegative? just one? which?)
q: asuming whole numbers?
q: order mattters?
q: what should return []?

def stretch(array)
  new_array = []
# loop through the array of integers
  # if there is no remainder while dividing by 2
    # divide the digit and shovel it twice in the new array
  # else
    # add +1 to the digit, divide it by 2 and shovel it into a new array
    # divide the digit by 2 and shovel it into the new array
  # return new_array
end

def stretch(array)
  new_array = []
  array.each do |num|
    if num % 2 == 0
      new_array << num / 2
      new_array << num / 2
    else
      new_array << (num + 1) / 2
      new_array << num / 2
    end
  end
  return new_array
end

# alternative shorter solution upon reflection
# (I would probably not come up with it out during short and stressful interview)

def stretch(array)
  new_array = []
  array.each do |num|
    new_array << num / 2 + num % 2
    new_array << num / 2
  end
  return new_array
end


## Problem #3
Write a method named `numUnique` that accepts a sorted array of integers
as a parameter and **utilizes a hash to** calculate and return the number of
unique values in the array. The array is guaranteed to be in sorted order,
which means that duplicates will be grouped together.

For example, if a variable called list stores the following values:
`list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]`
then the call of `numUnique(list)` should return **9**
because this list has 9 unique values (5, 7, 8, 22, 23, 31, 35, 40 and 41).

It is possible that the list might not have any duplicates. For example if
list instead stored this sequence of values:
`list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]`
Then a call on the method would return **15**
because this list contains 15 different values.

If passed an empty list, your method should return **0**.

def numUnique
end

## Problem #4
Write a method named `numUnique2` that functions the same as `numUnique`
except that it **does NOT use a hash** to solve the problem. In this version,
you should only iterate over the array, but **use no auxiliary storage**
outside of fixnum variables, if needed.

Remember that you can assume that the values in the array appear in
sorted (nondecreasing) order.
