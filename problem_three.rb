def numUnique(integer_array)
  unique_hash = {}
  integer_array.each do |num|
    unique_hash[num] = "unique"
  end
  return unique_hash.length
end

list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
list2 = []

print numUnique(list)
print numUnique(list2)
