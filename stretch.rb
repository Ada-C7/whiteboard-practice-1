def stretch(array)
  stretch_array = "["

  for i in 0..array.length-1
    if array[i] % 2 == 0
      stretch_array += (array[i] / 2).to_s + ", " + (array[i] / 2).to_s
    else
      stretch_array += ((array [i] / 2) + 1).to_s + ", " + (array[i] / 2).to_s
    end

    if i != array.length-1
      stretch_array += ", "
    else
      stretch_array += "]"
    end
  end
  return stretch_array
end

list = [18, 7, 4, 24, 11]
puts stretch(list)
