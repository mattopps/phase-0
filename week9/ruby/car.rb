

# 2. Pseudocode
# -create a car class that takes arguments for make and model and color
#  -give the car the ability to DRIVE
#    -create a way to display and calculate how far the car has driven
#     -create a way to display how fast the car is going, and change the speed if necessary
#      -create a way for the car to turn
#       -create a way to sum the distance travelled
#        -create a way to step the car (ie set the speed to 0. so this is included above)
#         -create a record of actions taken during a drive.



# 3. Initial Solution

class Car
 

attr_accessor :speed, :direction, :distance, :total_distance

  def initialize (model,color)
  	@model = model
  	@color = color
  	@speed = 0
  	@total_distance = 0
  	@activity_log = []
  	@pizza_warmer = []
  end

  def drive(distance, speed)
   	change_speed(speed)
   	puts "driving #{distance} miles at #{speed}."
   	@total_distance += distance
   	@activity_log.push("drove #{distance} miles at #{speed}mph.")
  end
  
  def change_speed(speed)
  	@speed = speed
  	@activity_log.push("changed speed to #{speed}mph.")
  end
  
  def speedometer
  	puts @speed
  end
  
  def odometer
  	puts @total_distance
  end
  
  def turn(direction)
  	@direction = direction
  	@activity_log.push("turned #{direction}.")
  end
  
  
  def stop
  	@speed = 0
  	@activity_log.push("stopped.")
  end
  
  def actions_list
  	p @activity_log
  end

end

class Pizza

attr_reader :size, :type

  def initialize(size, type)
  	@size = size
  	@type = type
  end
  
  def load(pizza)
    @pizza_warmer.push(pizza)
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
camry = Car.new("camry", "green")
camry.load(dinner, "large", "cheese")
camry.drive(0.25, 25)
camry.stop
camry.turn("right")
camry.drive(1.5, 35)
camry.change_speed(15)
camry.drive(0.25, 15)
camry.stop
camry.turn("left")
camry.drive(1.4, 35)
camry.stop
camry.odometer
camry.actions_list






# 5. Reflection

