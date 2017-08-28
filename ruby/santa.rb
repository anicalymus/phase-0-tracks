class Santa
	attr_reader :ethnicity, :age
	attr_accessor :gender

	def initialize(gender, ethnicity, age)
		@gender = gender
		@ethnicity = ethnicity
		@age = age.to_i
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@celebrate_birthday = 1
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday=(celebrate_birthday)
		@celebrate_birthday = @celebrate_birthday
		puts "Santa is #{celebrate_birthday} today, happy birthday!"
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.delete_if {|reindeer| reindeer == reindeer_name}
		@reindeer_ranking.insert(-1, reindeer_name)
		puts "Bad #{@reindeer_ranking[-1]}...I am mad at you!"
	end

	def about
		puts "New santa facts:"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Age: #{@age}"
		
	end

	santas = []
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

	#counter = 0
	while santas.length < 50
		santas << Santa.new(example_genders[rand 0..7], example_ethnicities[rand 0..7], (rand 0..140))
	end
# 	santas.each do |santa|
# 		santa.ethnicity
# 		santa.gender
# 	end
santas.each do |index|
	index.about
end
 end


#setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	#  end
# getter methods
# 	def age
# 		  @age = @age + 1
# 		  puts "Santa is #{@age} year old!"
# 	end

	# def ethnicity
	# 	 @ethnicity = "black"
	# 	 puts "Santa is a #{@ethnicity} #{@gender}!"
	# end


	#def initialize
	#	puts "initializing Santa instance..."
	#end





#DRIVER CODE
santa = Santa.new("female", "black", "1")
santa.speak
santa.eat_milk_and_cookies("oatmeal rasin")
santa.gender = "female"
santa.age 
santa.ethnicity 
santa.celebrate_birthday = "1"
santa.get_mad_at("Vixen")
santa.about


