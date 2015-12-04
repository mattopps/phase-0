#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census


# Virus Predictor

# I worked on this challenge [by myself, but with Adell Hanson-Kahn  as a guide.
# We spent [1]hours on this challenge.

# Initial Solution

# require_relative 'state_data' # require looks in the load path. require_relative looks at the relative path.

# class VirusPredictor
   
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#     # puts STATE_DATA["Wyoming"] This is just a test to see what prints.
#   end
    
    # def virus_effects # all of these arguments are redundant because instance vairables can be accessed by any method in the class and so do not have to be passed in for access. the same is true for predicted_deaths speed_of-Spread
    #   predicted_deaths(@population_density, @population, @state)
    #   speed_of_spread(@population_density, @state)
    # end

#   private

# #   # The method performs mathematical calculations of a state's predicted death toll based on its population density and population total and then prints the results. 
  
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

#   def speed_of_spread(population_density, state) #in months #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     months = 0.0 #should be time, not speed (maybe months)

#     if @population_density >= 200 # use case statement
#       months += 0.5
#     elsif @population_density >= 150
#       months += 1
#     elsif @population_density >= 100
#       months += 1.5
#     elsif @population_density >= 50
#       months += 2
#     else
#       months += 2.5
#     end

#     puts " and will spread across the state in #{months} months.\n\n"

#   end

# end

#=======================================================================
#Refactor
require_relative 'state_data' # require looks in the load path. require_relative looks at the relative path.

class VirusPredictor
   
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    # puts STATE_DATA["Wyoming"] This is just a test to see what prints.
  end


  # virus_effects calls those two methods.
  def virus_effects
    predicted_deaths # all of these arguments are redundant because instance vairables can be accessed by any method in the class and so do not have to be passed in for access. the same is true for predicted_deaths speed_of-Spread
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when (0..49)
        number_of_deaths = (@population * 0.05).floor
      when (50..99)
        number_of_deaths = (@population * 0.1).floor
      when (100..149)
        number_of_deaths = (@population * 0.2).floor
      when (150..199)
        number_of_deaths = (@population * 0.3).floor
      else
       number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread#in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = 0.0 #should be time, not speed (maybe months)

    case @population_density
      when (0..49)
        months += 2.5
      when (50..99)
        months += 2
      when (150..199)
        months += 1
      when (100..149)
        months += 1.5
      else
        months += 0.5
      end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
  

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# 
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# 
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#=======================================================================

#release 5 - # implement for all 50 states.

STATE_DATA.each do |k,v| 
  VirusPredictor.new(k, v[:population_density], v[:population]).virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#   -The string can be changed. Also it is not as easy to write the rocket =>. Symbols are immmutable and are permanent and are easier to write. Although I sometimes forget to move the colon back to the left side of the symbol when accessing a hash value.

# What does require_relative do? How is it different from require?
#   -It loads the contents of another file in by looking at the relative path of the file. require loads the file by looking through a long list of directories.

# What are some ways to iterate through a hash?
#   -each {|k,v|} ditto but replace each with map or collect. each_key, each_value, has_key?, has_value?.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   -the arguments were all instance variables. (though to be fair this 'stood out' due to a very helpful hint from my guide. I probably wouldn't have gotten it that quickly. The release gives a good hint as well.)

# What concept did you most solidify in this challenge?
#   -

