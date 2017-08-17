#Creating a client info sheet
puts "Interior design client information form"

puts "Name:"
client_name = gets.chomp

puts "Age:"
client_age = gets.chomp

puts "How many children do you have?:"
num_children = gets.chomp

puts "What is your decor theme?:"
decor_theme = gets.chomp

puts "Here is your client info:"

#Converting user input to the a hash

client_info = {
	name: client_name,
	age: client_age,
	children: num_children,
	decor: decor_theme
}

p client_info

#Print the hash back out to the screen when the designer has answered all of the questions.
#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
#Print the latest version of the hash, and exit the program.