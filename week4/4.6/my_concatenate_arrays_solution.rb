=begin
take each index value of two arrays and add it to a new array which will have all the values of the two base arrays.

we could do a lot of pushes.   

=end



def array_concat(array_1, array_2)
  new_array =[]

  array_1.each do |val|
    new_array.push(val)
  end
  array_2.each do |val|
    new_array.push(val)
  end

new_array


end





