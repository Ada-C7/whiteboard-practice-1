
# PROBLEM 1##################################################

def print_array(my_array)
  #print opening bracket and first value
  # print_array(list)
  print "[#{my_array[0]}" # not sure if string interpolation is OK;

  # for each item in the list (until the last one)
  # print "<item>, "

  for i in 1..(my_array.length-1)
    print ", #{my_array[i]}"
  end

  # print closing bracket`
  print "]"
  puts ""
end

##PROBLEM 2############################################

def stretch(arr)
  #create new array
  new_arr = Array.new
  # for each element  in the array
  if arr.length == 0
    return 0
  end
  for i in 0..(arr.length-1)
    # divide number by two
    half_num = arr[i]/2
    # add a one if it is odd
    new_arr << half_num + arr[i]%2
    #add number divided by two
    new_arr << half_num
  end
  print_array(new_arr)
  return new_arr
end
########PROBLEM 3#####################################
def numUnique2(arr)
  blank_hash = {}

  # get rid of edge case
  if arr.length == 0
    return "**0**"
  end

  # make hash where first key is the value of an array and second is the count of that array
  hash[arr[0]] == 1

  # for each additional element in the array
  for i in 1..(arr.length -1)
    if hash[arr(i)] == nil
      hash[arr(i)] == hash[arr(i)] + 1
    else
      hash[arr(i)] == 1
    end
    return "**#{hash.length}**"
  end
end
###PROBLEM4###########################
def numUnique(arr)

  counter = 1
  # if number does not equal previous number, add 1 to the counter
  # starting with the second element
  for i in 1..(arr.length-1)
    if arr[i] == arr[i-1]
      counter = counter + 1
    end
  end
  return "**#{counter}**"
end
##########################################
