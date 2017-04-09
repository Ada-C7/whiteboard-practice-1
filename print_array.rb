def print_array(array)
  array_string = "["

  for i in 0..array.length-1
    array_string += array[i].to_s

    if i != array.length-1
      array_string += ", "
    else
      array_string += "]"
    end
  end
  return array_string
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
puts print_array(list)
