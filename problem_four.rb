def numUnique2(integer_array)
  lastnum = 0
  new_array = []
  integer_array.each do |num|
    if num != lastnum
      new_array << num
    end
    lastnum = num
  end
  return new_array.length
end
# I think I obeyed the rules because I only used variables to hold fixnums.
# but this does seem like auxiliary storage, so ?

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
list2 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]

print numUnique2(list)
print numUnique2(list2)
