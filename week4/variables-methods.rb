puts  "name please"
name = gets.chomp
puts "address please"
address = gets.chomp
puts "city, state"
city_state = gets.chomp
puts "zip please"
zip = gets.chomp

def info(name,address, city_state, zip)
  puts ""
  puts name
  puts address
  puts city_state
  puts zip.to_s
end

info(name,address, city_state, zip)
