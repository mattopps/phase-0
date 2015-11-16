=begin
-taking an array of many strings and comparing the strings by length of charachters to determine which is the shortest.
-call.length on each string and hold the value in a placeholder variable.
-replace that value if any subsequent length is smaller.
-at this point it becomes like the smallest intiger problem. whichever value stored in the placeholder variable at the end will be the shortest.

=end


# def shortest_string(string)
#   string.min 
# end ----- this doesnt actually work.

def shortest_string(string_array)
   
   return nil if string_array.length == 0

   i = 0
   i2 = i + 1

   start = string_array[i]

   string_array.each do |string|
    
    if string.length < start.length
      start = string
    end
    end
    
    start
    
 end





