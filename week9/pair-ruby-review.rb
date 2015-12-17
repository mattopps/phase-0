# # Drawer Debugger

# # I worked on this challenge [by myself, with: ].
# # I spent [#] hours on this challenge.

# # Original Code

# class Drawer

# attr_reader :contents

# # Are there any more methods needed in this class?

# def initialize
# @contents = []
# @open = true
# end

# def open
# @open = true
# end

# def close
# @open = false
# end

# def add_item
# @contents << item
# end

# def remove_item(item = @contents.pop) #what is `#pop` doing?
# @contents.delete(item)
# end

# def dump  # what should this method return?
# puts "Your drawer is empty."
# end

# def view_contents
# puts "The drawer contains:"
# @contents.each {|silverware| puts "- " + silverware.type }
# end


# class Silverware
# attr_reader :type

# # Are there any more methods needed in this class?

# def initialize(type, clean = true)
# @type = type
# @clean = clean
# end

# def eat
# puts "eating with the #{type}"
# @clean = false
# end

# end



# # DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
# knife1 = Silverware.new("knife")

# silverware_drawer = Drawer.new
# silverware_drawer.add_item(knife1)
# silverware_drawer.add_item(Silverware.new("spoon"))
# silverware_drawer.add_item(Silverware.new("fork"))
# silverware_drawer.view_contents

# silverware_drawer.remove_item
# silverware_drawer.view_contents
# sharp_knife = Silverware.new("sharp_knife")


# silverware_drawer.add_item(sharp_knife)

# silverware_drawer.view_contents

# removed_knife = silverware_drawer.remove_item(sharp_knife)
# removed_knife.eat
# removed_knife.clean_silverware
# raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

# silverware_drawer.view_contents
# silverware_drawer.dump
# raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
# silverware_drawer.view_contents

# # What will you need here in order to remove a spoon? You may modify the driver code for this error.
# raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
# silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
# spoon.eat
# puts spoon.clean #=> this should be false

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? by default it removes the last item in the array
    @contents.delete(item)
  end

  def dump 
    @contents = []# what should this method return? an empty drawer. I almost created a loop to delete each item and then my pair said, we could just set it to empty. WOW!. Thanks
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware 
  attr_reader :type, :clean

  # Are there any more methods needed in this class? Yes, A clean_silverware method and a clean reader method.

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true    
  end
end



  # DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
  knife1 = Silverware.new("knife")

  silverware_drawer = Drawer.new
  silverware_drawer.add_item(knife1)
  silverware_drawer.add_item(Silverware.new("spoon"))
  silverware_drawer.add_item(Silverware.new("fork"))
  silverware_drawer.view_contents

  silverware_drawer.remove_item
  silverware_drawer.view_contents
  sharp_knife = Silverware.new("sharp_knife")


  silverware_drawer.add_item(sharp_knife)

  silverware_drawer.view_contents

  removed_knife = silverware_drawer.remove_item(sharp_knife)
  removed_knife.eat
  removed_knife.clean_silverware
  raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

  silverware_drawer.view_contents
  silverware_drawer.dump
  raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
  silverware_drawer.view_contents
 
  spoon = Silverware.new("spoon")
  silverware_drawer.add_item(spoon)
  silverware_drawer.view_contents
  raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
  silverware_drawer.remove_item #What is happening when you run this the first time?
  silverware_drawer.view_contents
  spoon.eat
  puts spoon.clean #




# # DRIVER TESTS GO BELOW THIS LINE


# Maybe they will be here soon.
# I was thinking about the one prompt given in the releases. What would be the best way of going about counting the number of items?
# Would it make sense to use a hash or add a seperate counter variable for each item and then interpolate that variable "#{item} x #{amount}"



# # Reflection

# What concepts did you review in this challenge?
# 	- We reviewed reading errors and fixing code, creating new instances 
# What is still confusing to you about Ruby?
# 	- Much. I wasn't sure if we needed to have silverware inherit anything from Drawers. And after the very different way to create new objects in JS the whole thing got really muddled for me.
# What are you going to study to get more prepared for Phase 1? 
# 	- I hope a lot.