# list = [3, 19, 27, 4, 98, 304, -9, 72]
# print_list(list) = [3, 19, 27, 4, 98, 304, -9, 72]
#
# Questions I had:
# Is the return value a string, or another array?
# If it's a string, is string interpolation ok?

# Solution for string output
def print_list(arr)
  my_s = "["
  # beginning of the string has the opening bracket
  arr[0...arr.length-1].each { |x| my_s += "#{x}, " }
  # add on each value in the array with a comma and space, except for the last value
  my_s += "#{arr[-1]}"
  # add on the last value, which doesn't have a comma and space
  my_s += "]"
  # add on the closing bracket
  return my_s
  # the entire string
end

# Solution for array output (not sure if this is allowed, though)
def print_list(arr)
  string = []
  # new empty array
  arr[0...arr.length].each { |x| string << x }
  # shovel each value into new empty array
  return string
  # prints the new array (arrays are printed as comma-separated lists enclosed in brackets)
end
