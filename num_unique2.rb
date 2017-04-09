def num_unique2(array)
  return 0 if array.length == 0
  current_num = array[0]
  unique_count = 1

  for i in 0..array.length-1
    if array[i] != current_num
      unique_count += 1
      current_num = array[i]
    end
  end

  return unique_count
end

list1 = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
list2 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
list3 = []

puts num_unique2(list1)
puts num_unique2(list2)
puts num_unique2(list3)
