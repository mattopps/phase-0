
# reverse the sign of the boolean from the smallest string.

#But I did type it all out instead of copying and pasting for practice

def longest_string(array)
  i = 0
  i2 = i +1
  start = array[0]

  array.each do |string|
    if 
      string.length > start.length
      start = string
    end
  end
  start
end