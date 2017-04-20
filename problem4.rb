# ## Problem #4
# Write a method named `numUnique2` that functions the same as `numUnique`
# except that it **does NOT use a hash** to solve the problem. In this version,
# you should only iterate over the array, but **use no auxiliary storage**
# outside of fixnum variables, if needed.
#
# Remember that you can assume that the values in the array appear in
# sorted (nondecreasing) order.

def numUnique2(array)
  count = 0
  for i in 0...array.length
    if array[i] != array[i + 1]
      count += 1
    end
  end
  return count
end
