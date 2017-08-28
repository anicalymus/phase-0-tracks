puts "What's the hamster's name?"
hamster_name = gets.chomp
puts "How loud is your hamster on a scale of 1-10"
volume = gets.chomp
volume = volume.to_i
puts "What color is the hamsters fur?"
fur_color = gets.chomp
puts "Is the hamster adoptable? (y/n)"
adoptable = gets.chomp
if adoptable == "y"
    adoptable = true
else adoptable = false
end
puts "How old is the hamster?"
age = gets.chomp
if age.empty?
    age = nil
else age = age.to_i
end
puts "Here is the data you entered:"
puts "Your hamster's name is #{hamster_name}."
puts "Your hamster's volume is #{volume}."
puts "Your hamster is #{fur_color}."
puts "Adoptable? #{adoptable}."
puts "Your hamster is #{age} years old."
