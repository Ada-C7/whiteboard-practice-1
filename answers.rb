# Number one
def print_array(array)
  #Adds in the bracket for first item and comma
  to_print = "[#{array[0]},"
  array[1..-2].each do |item|
    #adds in space and comma for middle items
    to_print << " #{item},"
  end
  #adds in space and ending bracket for last item
  to_print << " #{array[-1]}]"
  #prints them out - usually I would use return and not puts but the problem
  #explicitly said to print the contents of the array, not just return them.
 puts to_print
end

#number two
def stretch(array)
  # creates new array
  stretch_array = []
  # accesses each item in original array
  array.each do |num|
    # divides in two & accounts for remainder.
    # checks if number is even.  If so divides regularly.
    if num % 2 == 0
      item_1 = num / 2
      item_2 = item_1
    else
      # if it's not even, divides and saves one value of the smaller amount, adds one to the other amount.
      item_1 = num / 2
      item_2 = (item_1 + 1)
    end
    # saves each of those values
    #shovels them into the stretch array
    stretch_array << item_1
    stretch_array << item_2
  end
  return stretch_array
end

#number three
#I could have created this with a hash, but I was using the hash the same
#way I was using an array (keep track of unique numbers and shovelling them in)
#So it didn't make sense for me to make it a hash.  I'd be interested to see
#the advantage of using a hash, as I'm sure there's a different way that I'm not seeing.
def numUnique(array)
  #keeps running this function until the index returns nil - no more items
  n = 0
  unique = [] #Or I could use a has unique = {numbers: []}
  #accesses each item in array
  until array[n] == nil
    #compares that to the item next to it
    if array[n] != array[n+1]
      #if they're not the same, save it.
      unique << array[n] #I would shovel into the array that is my value of unique[:numbers]
    end
    n += 1
  end
  return unique.length #return unique[:numbers].length
end

#number four.  In this one I just got rid of the unique array of numbers
#And added a counter instead.
def numUnique2(array)
  #keeps running this function until the index returns nil
  n = 0
  unique_numbers = 0
  until array[n] == nil
    if array[n] != array[n+1]
      #keeps track of unique numbers
      unique_numbers += 1
    end
    n += 1
  end
  return unique_numbers
end
