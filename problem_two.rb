def stretch(integer_array)
  new_array = []
  integer_array.each do |var|
    half = var / 2
    if half + half == var
      2.times do
        new_array << half
      end
    else
      new_array << half + 1
      new_array << half
    end
  end
  return new_array
end

list = [18, 7, 4, 24, 11]

print stretch(list)
