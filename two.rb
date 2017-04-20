list = [18, 7, 4, 24, 11]

def stretch(list)
  new_list = []
  counter = list.length
  list[0..counter].each do |n|
    if n % 2 == 0
      x = n / 2
      y = n / 2
      new_list << x
      new_list << y
    else
      x = (n/2) + 1
      y = (n/2)
      new_list << x
      new_list << y
    end
  end
  print new_list
end

stretch(list)
