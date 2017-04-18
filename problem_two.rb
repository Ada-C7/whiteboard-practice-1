#2.
def stretch(list)
  new_array = []
  for i in 0...list.length
    if list[i] % 2 == 0
      half = list[i] / 2
      new_array << half
    else
      odd_half = (list[i] / 2)
      new_array << odd_half + 1
    end
    new_array << list[i] / 2
  end
  puts "#{new_array}"
end

list = [18, 7, 4, 24, 11]
stretch(list)
