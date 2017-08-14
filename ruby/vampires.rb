def processed_employees
  puts "How many employees will be processed?"
  num_of_employees = gets.chomp
  
  def employee_survey

    puts "What is your name?"
    vampire_name = gets.chomp
    
    puts "How old are you?"
    age = gets.chomp
    age = age.to_i
    
    puts "What year were you born?"
    birth_year = gets.chomp
    birth_year = birth_year.to_i


    puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
    wants_garlic_bread = gets.chomp
    
    if wants_garlic_bread == "y"
      wants_garlic_bread = true 
    elsif wants_garlic_bread == "n"
      wants_garlic_bread = false
    end

    puts "Would you like to enroll in the company's health insurance? (y/n)"
    wants_health_insurance = gets.chomp
    
    if wants_health_insurance == "y"
      wants_health_insurance = true
    elsif wants_health_insurance == "n"
      wants_health_insurance = false
    end
    
    puts "List any known allergies one-by-one. Type 'done' when finished."
    allergies = gets.chomp
    
    puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
    
    correct_age = birth_year += age
    current_year = 2017
    current_year = current_year.to_i

    if
      correct_age == current_year && (wants_garlic_bread == true || wants_health_insurance == true)
      puts "Probably not a vampire."
    elsif
      correct_age != current_year && wants_garlic_bread == false && wants_health_insurance == false
      puts "Almost certainly a vampire"
    elsif
      correct_age != current_year && (wants_garlic_bread == false || wants_health_insurance == false)
      puts "Probably a vampire"
    elsif
       vampire_name == "Drake Cula" || vampire_name == "Tu Fang"
      puts "Definitely a vampire."
    
    else "Results are inconclusive."
    end
  
  end
  #End of employee survey 
  
  index = 1 
  while index <= num_of_employees.to_i
    employee_survey
    index += 1
  end

end

processed_employees



