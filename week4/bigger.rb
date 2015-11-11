

def bigger
  puts "number?"
  number = gets.chomp
  bigger = number.to_i + 1
  puts "are you sure you dont like #{bigger.to_s} ? it is bigger "
end

bigger