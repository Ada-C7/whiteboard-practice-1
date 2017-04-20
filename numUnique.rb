def numUnique sorted_array
  unique_array = []
  x = 0
  until x == sorted_array.length
    if sorted_array[x] != sorted_array[x+1]
      unique_array << sorted_array[x]
    end
    x += 1
  end
  return unique_array.length
end


# print numUnique([5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41])
