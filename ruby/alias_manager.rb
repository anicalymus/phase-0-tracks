#Taking a name and swapping the first and last name to create a fake name.

puts "What is your first name?"
first_name = gets.chomp

puts "What is your last name?"
last_name = gets.chomp

spy_name = {
	first: first_name,
	last: last_name
}

spy_name = last_name + " " + first_name


p spy_name

#Changing all of the vowels to the next vowel in 'aeiou', and all of the consonants to the next consonant in the alphabet.