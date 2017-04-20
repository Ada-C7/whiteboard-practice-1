#problem 1

def print_array(input)
  x = input.length
  print "["
  (x-1).times do |index|
    print input[index]
    print ", "
  end
  print input[-1]
  print "]\n"
end

sample = [4, 5, 15, 8, 9]
print_array(sample)

#problem 2
def stretch(input)
  #return array where each element of input
  #is replaced by two integers, each half the original
  # if odd, first number in pair should be 1 greater than second
  stretched = []
  input.each do |number|
    if number%2 == 0
      2.times { stretched << number/2 }
    else
      stretched << (number + 1)/2
      stretched << (number - 1)/2
    end
  end
  return stretched
end

sample = [5, 6, 24, 9, 18, 47]
print sample
print "\n"
print stretch(sample)
print "\n"
