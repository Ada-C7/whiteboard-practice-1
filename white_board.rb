require 'pry'


def print_array(array)

  string = ""
  array.each{|number| string += "#{number},"}
  string = "["+ string
  string[-1] = "]"
  print  string

end





def stretch(array)
  stretch = []
  array.each do |number|
    if number % 2 == 0
      2.times{stretch << number/2}
    else
      stretch << number/2 + 1
      stretch << number/2
    end
  end
  print stretch

end


def numUnique(array)
  hash = {}
  array.each_with_index do |num,index|
    if array[index] != array[index-1]
      hash[num] = 1
    else
      hash[num] += 1
    end
  end
  return hash.length

end


# I spent an extra two days on this because I lost scope of the problem entirely.  I thought I was
#trying to return the array without duplicates and not the length.  
def numUnique2(array)
  unique = 0
   array.each_with_index do |num,index|
    if array[index] == array[index+1]
      unique = unique
    elsif array[index] != array[index+1]
      unique += 1
    end
end



return unique

end

list = 2,3,3,4,5,6,7,7,8
print numUnique2(list)
