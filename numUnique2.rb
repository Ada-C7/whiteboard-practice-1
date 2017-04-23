def numUnique2(arr)
  place_marker = 0
  counter = 0

  arr.each do |number|
    if arr[place_marker] != arr [place_marker-1]
      counter += 1
      place_marker += 1
    else
      place_marker += 1
    end
  end
  
  return counter
end
