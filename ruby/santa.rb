class Santa

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def initialize
		puts "initializing Santa instance..."
	end

end



#DRIVER CODE
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("oatmeal rasin")
