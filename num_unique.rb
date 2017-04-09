def num_unique(array)
  num_counts = {}
  unique_count = 0

  for i in 0..array.length-1
    if num_counts[array[i]]
      num_counts[array[i]] += 1
    else
      num_counts[array[i]] = 1
    end
  end

  num_counts.each do |num, count|
    unique_count += 1
  end
  return unique_count
end

list1 = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
list2 = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
list3 = []

puts num_unique(list1)
puts num_unique(list2)
puts num_unique(list3)
