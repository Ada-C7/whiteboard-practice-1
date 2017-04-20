# Problem Number 1

list = [3, 19, 27, 4, 98, 304, -9, 72]

def print_array(list)
  x = list.length
  a = 0

  print "["
  x.times do
    if a == 0
      print list[a]
      a += 1
    else
      print ", "
      print list[a]
      a += 1
    end
  end
  print "]"
end

print_array(list)

# Problem Number 2

array = [18, 7, 4, 24, 11]

def stretch(array)
  stretched = []
  array.each do |num|
    if num % 2 == 0
      x = num / 2
      2.times do
        stretched << x
      end
    else
      x = num / 2
      stretched << x + 1
      stretched << x
    end
  end
end
