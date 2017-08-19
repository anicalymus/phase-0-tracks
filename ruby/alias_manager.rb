
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
				