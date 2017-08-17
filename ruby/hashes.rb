#Creating a client info sheet.
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

#Converting user input to the a hash.

client_info = {
	name: client_name,
	age: client_age,
	children: num_children,
	decor: decor_theme
}

#Printing the hash back out to the screen when the user has answered all the questions.
p client_info
#Asking the user if they need to make any changes to their original answers, if not the program ends.
puts "Would you like to change any of your answers? If so, please type
name, age, children or decor."
answer = gets.chomp

if answer == "name"
	puts "What would you like to change it to?"
	client_name = gets.chomp
	client_info[:name] = client_name
elsif answer == "age"
	puts "What would you like to change it to?"
	client_age = gets.chomp
	client_info[:age] = client_age
elsif answer == "children"
	puts "What would you like to change it to?"
	num_children = gets.chomp
	client_info[:children] = num_children
elsif answer == "decor"
	puts "What would you like to change it to?"
	decor_theme = gets.chomp
	client_info[:decor] = decor_theme
else answer == "none"		
	puts "Thank you for your information"
end
		
#Printing the latest version of the hash, and exiting the program.

p client_info