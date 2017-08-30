# Virus Predictor

# I worked on this challenge [with: Brittany Snyder ].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#
#
#Require_relative essentially copies and pastes the code from the provided file into the working file, so it's now accessible.
#Require is used to access built-in ruby modules.
require_relative 'state_data'
class VirusPredictor
attr_reader :number_of_deaths
#Upon creating a new instance of this class, establishes a default state of origin, population density, and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    #@number_of_deaths
  end
#Summarizes the result of the predicted deaths and speed of spread methods, printing a message that gives the totals of both based on population density, state, etc.
  def virus_effects
    predicted_deaths
    speed_of_spread
    #print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"
  end
#Uses population density and population of a state to figure out the predicted deaths if there were an outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths =
      if @population_density >= 200
        (@population * 0.4).floor
      elsif @population_density >= 150
        (@population * 0.3).floor
      elsif @population_density >= 100
        (@population * 0.2).floor
      elsif @population_density >= 50
        (@population * 0.1).floor
      else
        (@population * 0.05).floor
      end
      print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
private

#Have methods do a singular thing, could potentially break out into another method
#Uses population density of a state to determine how quickly the virus would spread (in months)
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
      if @population_density >= 200
      speed += 0.5
      elsif @population_density >= 150
        speed += 1
      elsif @population_density >= 100
         speed += 1.5
      elsif @population_density >= 50
         speed += 2
      else
        speed += 2.5
      end
     puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state, state_details|
  new_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  new_state.virus_effects
end
alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects
jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects
california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects
alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# ----The differences between the two different hash syntaxes is that one is a hash rocket and the other is a symbol. They do the same thing but
#     the symbol makes the code more readable.
# What does require_relative do? How is it different from require?
#-----Relative require copies and paste the other file that you are using into the current file that you are in so that it can use the data from
#     from that file. Require is used to access built-in ruby modules.
# What are some ways to iterate through a hash?
#-----You can iterate through a hash using .each, .each_value and .each_key
# When refactoring virus_effects, what stood out to you about the variables, if anything?
#-----The variables were all readable and can have an attr_reader and didn't need to be in virus_effects.
# What concept did you most solidify in this challenge?
#-----The concept that I most solidified in this challange is refactoring and making code DRY.