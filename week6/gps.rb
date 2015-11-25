# Your Names
# 1) Matthew Oppenheimer
# 2) The guide. Celeen

# We spent [1] hours on this challenge. And then I refactored by myself. A bit over another hour.
# Bakery Serving Size portion calculator.

# def serving_size_calc(order, order_quantity)# creates a method which accepts two arguments - a food order and how many people to prepare for.
#    menu = {"cookie" => 1, "cake" =>  5, "pie" => 7} # this is a list of the available food that can be prepared. IE a Menu
  
# #   error_counter = 3 # I have no idea what this is right now.

#   menu.each do |food|
#     if menu[food] != menu[order]
#       p error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{order} is not a valid input")
#   end

#   serving_size = menu.values_at(order)[0]
#   serving_size_mod = order_quantity % serving_size

#   case serving_size_mod
# #   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{order}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{order}, you have #{serving_size_mod} leftover ingredients. Suggested baking order MAKE THIS FEATURE"
#   end
# end
# #.each do |food, ##suggested_size##| iterating for just the value of a key/value pair in a hash requires two variables
# #     p food
# #     p "Library[food] is #{library[food]}"
#     p "Library[item_to_make] #{library[item_to_make]}"
# if library[food] != library[item_to_make] # determines if the food requested is in the list of foods that can be prepared. 
     # p error_counter -= 1 # changes the error counter.
   # end
  #end

#Refactor

def serving_size_calc(order, party_size) 
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless menu.has_key?(order) 
    raise ArgumentError.new("Sorry, we are out of #{order} right now.")
  end

  serving_size = menu[order]
  extra_ingredients = party_size % serving_size

  case extra_ingredients
  when 0
    return "Make #{party_size/serving_size} #{order}"
  when 1..4
    return "Make #{party_size/serving_size} #{order}, you have #{extra_ingredients} leftover ingredients. You could make #{extra_ingredients} cookies"
  when 5
    return "Make #{party_size/serving_size} #{order}, you have #{extra_ingredients} leftover ingredients. You could make #{extra_ingredients} cookies, or a cake"
  when 6
    return "Make #{party_size/serving_size} #{order}, you have #{extra_ingredients} leftover ingredients. You could make #{extra_ingredients} cookies, or a cake and a cookie"
  end
end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 13)
# p serving_size_calc("pie", 14)
 #p serving_size_calc("pie", 153)

#p serving_size_calc("cake", 4)
#p serving_size_calc("cake", 9)

#p serving_size_calc("cookie", 1)
#p serving_size_calc("cookie", 10)
#p serving_size_calc("croissant", 10)

#p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
=begin

What did you learn about making code readable by working on this challenge?
  -English is preferable to code.

Did you learn any new methods? What did you learn about them?
  I do not believe so.

What did you learn about accessing data in hashes? 
  
  - it is very important to remember that keys and values have to be accessed differently and separately, otherwise the pair is accessed at once.

What concepts were solidified when working through this challenge?
 That counter iterations can be very roundabout and there is a more direct method possible. Grammar is tricky. I want to refactor to make the singular/plural more accurate. It is not correct to say 'make 21 pie', nor is it correct to say 'make 1 cookie' or '1 extra ingredients' But I have spent a lot of time on this already. 
 That hashes are unique 
 That variable names in loops shouldnt be confused with variable names or arguments from methods. I think I really do prefer x or some generic thing to go in the pipes ||. Having |food| unnecessarily threw me off. if it was |x| I don't think I would have been thrown off.
 That variable names are more readable and make the code more easily followed if they are in normal english, and not as a command (item_to_make). food doesnt come in a library, but is usually referenced in a menu. What in the world is a serving_size_mod??? Things like that.

=end






