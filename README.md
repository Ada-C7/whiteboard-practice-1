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


def print(array)
    #beginning of string to push elements from array to
    to_print = "[ "

    #counter to make sure not at last item  because don't want a comma after that one
    #index is based on 0, but length counts the first element as 1, so this needs to reflect that and begin at 1
    i = 1

    #loop to go through each number in the array passed to the method and push it to the to_print string with
    #a comma and space, if it is not the last element of the array
    array.each do |num|
        unless i == array.length
            #need to convert num to string to add to the printable string var
            to_print << num.to_s
            to_print << ", "

            #increment i
            i++
        else
            to_print << num.to_s
        end
    end
    to_print << " ]"
    return to_print
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print(list)

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

def stretch(array)
    #create an empty array to hold the split numbers
    new_array = []

    #loop through each number to split them and add to new array
    array.each do |num|
        #check if the number is even and will add two identical elements to the new_array
        if num%2 == 0
            half = num/2

            #i know there is a more DRY way of doing this, but can't be sure how to make it work right now
            new_array << half
            new_array << half

            #if the number is not even, need to split it and ensure that the larger of the digits is first in the new_array
        else
            #when divide an integer by 2, the smaller number will be the result, so save this as small
            small = num/2
            #get the other number to add to the odd number by subtracting small from the OG num
            large = num - small
            #put large in array first, then small
            new_array << large
            new_array << small
        end
    end
    return new_array
end


list = [18, 7, 4, 24, 11]
stretch(list)


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

## Problem #4
Write a method named `numUnique2` that functions the same as `numUnique`
except that it **does NOT use a hash** to solve the problem. In this version,
you should only iterate over the array, but **use no auxiliary storage**
outside of fixnum variables, if needed.

Remember that you can assume that the values in the array appear in
sorted (nondecreasing) order.
