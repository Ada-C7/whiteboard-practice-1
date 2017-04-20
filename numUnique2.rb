def numUnique2 sorted_array
  compare_count = 0
  unique_count = 0
  until compare_count == sorted_array.length
    if sorted_array[compare_count] != sorted_array[compare_count+1]
      unique_count += 1
    end
    compare_count += 1
  end
  return unique_count
end


# print numUnique2([5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])
