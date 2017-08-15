def food_order
   puts "Let me make sure I got your order correct."
   yield("hamburger", "coke", "cake")
end
food_order { |entree, drink, dessert| puts "You ordered #{entree}, #{drink}, #{dessert}." }


months = ["june", "july", "august", "september"]
puts "Original data:"
p months
months.each do |month|
    puts month
end
p months

months.map! do |month|
	month.upcase
end

p months
seasonsal_activites = {"spring" => "bike_riding", "summer" => "swimming", "fall" => "reading", "winter" => "skiing"}
puts "Original data:"
p seasonsal_activites
seasonsal_activites.each do |season, activity|
    puts "#{activity} is something you do in the #{season}"
end

letters = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}

numbers = [1, 2, 3, 4, 5, 6]

numbers.delete_if { |num| num <2 }

letters.delete_if { |item, value| item >= "c" }