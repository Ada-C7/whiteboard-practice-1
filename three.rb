list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]

def numUnique(list)
  if list.length == 0
    return 0
  else
    counter = list.length
    hash = {}
    list[0..counter].each do |n|
      if hash.key
end
