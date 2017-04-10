def print_array(nums)
  print '['

  index = 0
  while index < nums.length
    print nums[index]
    print ', ' if index != nums.length - 1
    index += 1
  end

  print ']'
end

def stretch(nums)
  results = []

  for num in nums
    results << num - num/2
    results << num/2
  end

  results
end

def numUnique(nums)
  num_count = {}
  index = 0

  for num in nums
    if index == 0 || nums[index - 1] != num
      num_count[num] = 1
    else
      num_count[num] += 1
    end

    index += 1
  end

  num_count.length
end

def numUnique2(nums)
  index = 0
  unique_count = 0

  while index < nums.length
    if index == 0 || nums[index] != nums[index - 1]
      unique_count += 1
    end
    index += 1
  end

  unique_count
end
