def stretch array
  stretched_array = []

  array.each do |int|
    stretched_array << int - (int/2)
    stretched_array << int/2
  end

  return stretched_array
end


# print stretch([18, 7, 4, 24, 11])
