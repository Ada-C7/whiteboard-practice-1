# 1.

arr = ["string", 1, 5.6]

def print_array(arr)
  print "["
  arr.each_with_index do | element, index|
    print element
      if index != (arr.length -1)
        print ","
      end
      print "]"
    end
  end

# This is a linear method .... 0(n)

# 2.

arr = [2,5,8]

def stretch(arr)
  result = []

  arr.each do | element |
    a = element/2
    b = element - a

    result << b
    result << a
  end
  result
end
