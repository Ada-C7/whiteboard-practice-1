def print_array(ints)
  raise ArgumentError.new("argument must be an array") if ints.class != Array
  print "["
  (0...(ints.length - 1)).each do |i|
    print ints[i]
    print ", "
  end
  print ints[-1]
  print "]"
end

def stretch(ints)
  raise ArgumentError.new("argument must be an array") if ints.class != Array
  stretched = Array.new
  ints.each do |int|
    raise ArgumentError.new("array must contain integers") if int.class != Integer
    half = int / 2
    if int % 2 == 0
      stretched << half
    else
      stretched << half + 1
    end
    stretched << half
  end
  return stretched
end

def numUnique2(list)
  raise ArgumentError.new("argument must be an array") if list.class != Array
  return 0 if list.length == 0

  count = 1 # fencepost
  (1...list.length).each do |i|
    if list[i] != list[i - 1]
      count += 1
    end
  end
  return count
end
