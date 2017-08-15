#Write your own method that takes a block
def food_order
   puts "Let me make sure I got your order correct."
   yield("hamburger", "coke", "cake")
end

food_order { |entree, drink, dessert| puts "You ordered #{entree}, #{drink}, #{dessert}." }

###############################################################################################################################

#Release 1: Use .each, .map and .map!
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

################################################################################################################################

#Release 2: Use the Documentation
letters = {"a" => 1, "b" => 2, "c" => 3, "d" => 4}

numbers = [1, 2, 3, 4, 5, 6]
#A method that iterates through the items, deleting any that meet a certain condition.
numbers.delete_if {|num| num < 2 }

letters.delete_if {|item, value| item >= "c" }

#A method that filters a data structure for only items that do satisfy a certain condition.
numbers.keep_if {|num| num >= 3 }

letters.keep_if {|item, value| item < "d" }

#A different method that filters a data structure for only items satisfying a certain condition.
numbers.select {|num| num != 3}

letters.select {|item, value| item > "b" }
#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops.
numbers.drop_while {|num| num >= 4 }

letters.drop_while {|item, value| item == "a" }