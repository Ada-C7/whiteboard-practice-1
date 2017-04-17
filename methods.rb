
def print_array(arr)
  string = "["
  for index in 0...(arr.length-1)
    string += "#{arr[index]}, "
  end
  string += "#{arr[arr.length-1]}]"
  print string + "\n"
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)


def stretch(arr)
  new_arr = []
  for index in 0...arr.length
    if arr[index]%2 != 0
      new_arr << arr[index]/2 + 1
    else
      new_arr << arr[index]/2
    end
    new_arr << arr[index]/2
  end
  print_array(new_arr)
end

list = [18, 7, 4, 24, 11]
stretch(list)
