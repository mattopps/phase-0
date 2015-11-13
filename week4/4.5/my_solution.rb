# Calculate a Grade

# I worked on this challenge [by myself, with: ].

=begin Psuedocode
input integer

grade = 
1- 90-100
2
3
4
5- 60-69


turn the number into a string 1-5


num.to_S

Psuedocode
=end 
# Your Solution Below

def get_grade(average)
  case average
    when (90..100)
      return "A"
    when (80..89)
      return  "B"
    when (70..79)
      return  "C"
    when (60..69)
      return  "D"
    when (0..59)
      return  "F"
    end



    

end  


