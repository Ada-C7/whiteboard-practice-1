# list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]
# numUnique(list) = 9

# list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]
# numUnique(list) = 15

# list = []
# numUnique = 0

def numUnique(arr)
  # empty hash
  my_h = {}
  # go through the Array
  arr.each do |number|
  # first number: the key is the value of the first number, value is 1
  # second number: does it equal the first key?
  # if so, first key's value increments one
  # if not, the new key is the value of the second number, value is 1
  # third number: does it equal the second key?
  # if so, value of second key increments one
  # if not, the new key is the value of the third number, value is 1
  # etc
  # What is the size of the hash?
    if my_h[num]
      my_h[num] += 1
    else
      my_h[num] = 1
    end
  return my_h.length
end
