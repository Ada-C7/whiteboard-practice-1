# list = [18, 7, 4, 24, 11]
# stretch(list) = [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]

def stretch(arr)
  # new empty array
  new_arr = []
  # go through each element
  arr.each do |number|
    # if even, divide by two
    if number % 2 == 0
      new_arr << (number / 2)
      new_arr << (number / 2) # this isn't DRY, I think
    # if odd, subtract one, divide by two. Add one to the first half
    else
      new_arr << (((number - 1) / 2) + 1)
      new_arr << ((number - 1) / 2) # DRY-ness issue here, maybe
    # store both halves
    end
  end
  # return new array
  return new_arr
end
