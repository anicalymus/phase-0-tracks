puts "What is your name?"
vampire_name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
birth_year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
wants_garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance? (y/n)"
wants_health_insurance = gets.chomp

correct_age = birth_year + age
current_year = 2017

  if
  correct_age == current_year && (wants_garlic_bread == yes || wants_health_insurance == yes)
  puts "Probably not a vampire."
  if
  correct_age != current_year && (wants_garlic_bread == no || wants_health_insurance == no)
  puts "Probably a vampire."
  
  end

end



