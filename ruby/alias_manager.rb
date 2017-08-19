#Release 0: Attempt a Tricky Algorithm
#Taking a name and swapping the first and last name to create a fake name.

puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

spy_name = last_name + " " + first_name


p spy_name

#Changing all of the vowels to the next vowel in 'aeiou'.

def vowel_changer(spy_name)
	vowels = ['a', 'e', 'i', 'o', 'u']
	cap_vowels = ['A','E','I','O','U']
	spy_name_array = spy_name.split('')
	spy_name_and_vowel = spy_name_array.map do |letter|
		if vowels.include?(letter)
			vowels.rotate(1)[vowels.index(letter)]
		elsif cap_vowels.include? (letter)
			cap_vowels.rotate(1)[cap_vowels.index(letter)]
		else
			letter
		end
end
spy_name_and_vowel_string = spy_name_and_vowel.join
end

#Changing all of the consonants to the next consonant in the alphabet.
def consonant_changer(spy_name_and_vowel)
	cap_consonants = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R','S','T','V','W','X','Y','Z']
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
	final_spy_name = ''
	spy_name_and_vowel_array = spy_name_and_vowel.split('')
	spy_name_and_vowel_and_consonant = spy_name_and_vowel_array.map do |letter|
		if consonants.include?(letter)
			consonants.rotate(1)[consonants.index(letter)]
		elsif cap_consonants.include?(letter)
			cap_consonants.rotate(1)[cap_consonants.index(letter)]
		else letter
		end
end
final_spy_name = spy_name_and_vowel_and_consonant.join
p "Your spy name is #{final_spy_name}!"
end

consonant_changer(vowel_changer(spy_name))

#Release 1: Provide a User Interface
#Creating a loop for a user to enter multiple names to get fake names in return

loop do
	puts "Would you like another spy name? If not type 'exit'."
	another_spy_name = gets.chomp
	if another_spy_name == "yes"
		puts "What is the first name?"
		fake_name_first = gets.chomp
		puts "What is the last name?"
		fake_name_last = gets.chomp
		consonant_changer(vowel_changer(fake_name_first + " " +fake_name_last))
	elsif another_spy_name =="exit"
		p "Thank you for using this program!"
		break
	else
		p "Please write another name."
	end
end

#Release 2: Store the Aliases
#Using a data structure to store the fake names as entered.

#spy_name_info = {
#	name: spy_name,
#	name1: another_spy_name
#}		



				