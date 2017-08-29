# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily(words)
#   	words + "!!!" + ":)"
#   end

# end

# DRIVER CODE
# Shout::yell_angrily("Uhhhh")


module Shout
	def food(yum)
		puts "This food is so #{yum}!!"
	end
end

class Tacos
	include Shout
end

class Pizza
	include  Shout
end

#DRIVER CODE
tacos = Tacos.new
tacos.food("yummmmmmy")
pizza = Pizza.new
pizza.food("so good")