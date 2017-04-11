# 1. print_array(list)
#
# ex. list = [3, 19, 27, 4, 98, 304, -9, 72]
# should print exactly like that, with brackets n commas
#
# questions
# is there a limit to the length of the array?
# does order matter?
#
# pseudocode:
# puts "["
# list.(length - 1).times do
# puts list[i] + ", "

def print_array(list)

  middle = ""
  (list.length - 1).times do |i|
    middle << "#{list[i]}, "
  end
  return "[#{middle}#{list[-1]}]"
end

list = [3, 19, 27, 4, 98, 304, -9, 72]
puts print_array(list)

# 2. stretch(list)
# ex. [18, 7, 4, 24, 11] returns
# [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]

# questions
# does order matter?

# pseudocode:
# list.length.times do for each element
#   if element / 2
#    2.times { result << element / 2 }
#   else
#    result << element / 2
#    result << element % 2

def stretch(list)
  result = []
  (list.length).times do |i|
    if list[i] % 2 == 0
      2.times { result << list[i] / 2 }
    else
      result << (list[i] / 2) + 1
      result << (list[i] / 2)
    end
  end
  return result
end

list = [18, 7, 4, 24, 11]
puts stretch(list)
