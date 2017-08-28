#Release 0: Attempt a Tricky Algorithm
#Taking a name and swapping the first and last name to create a fake name.

puts "What is your first name?"
first_name = gets.chomp.capitalize

puts "What is your last name?"
last_name = gets.chomp.capitalize

real_name = last_name + " " + first_name


p real_name

#Changing all of the vowels to the next vowel in 'aeiou'.
spy_names = {}

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
final_spy_name
end

spy_name = consonant_changer(vowel_changer(real_name))
spy_names[real_name] = spy_name

#Release 1: Provide a User Interface

another_spy_name = ""
#fake_name_first = ""
#fake_name_last = ""

loop do
	puts "Would you like another spy name? If not type 'exit'."
	another_spy_name = gets.chomp
	if another_spy_name == "yes"
		puts "What is the first name?"
		fake_name_first = gets.chomp.capitalize
		puts "What is the last name?"
		fake_name_last = gets.chomp.capitalize
		new_real_name = fake_name_first + " " +fake_name_last
		new_spy_name = consonant_changer(vowel_changer(new_real_name))
		spy_names[new_real_name] = new_spy_name
	elsif another_spy_name =="exit"
		p "Thank you for using this program!"
		break
	else
		p "Please write another name."
	end
end

#Release 2: Store the aliases
  spy_names.each do |name, nickname|
	puts "#{name} is also known as #{nickname}"
end






				