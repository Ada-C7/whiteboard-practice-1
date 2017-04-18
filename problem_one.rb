# 1.
def print_array(list)
  new_array = []
  for i in 0...(list.length)
    new_array << list[i]
  end
  puts "#{new_array}"
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
print_array(list)
