#Setting class name
class GuessWord
#Setting attr_reader so that instance variables are readable
	attr_reader :allowed_guesses, :guesses, :letter_guessed, :found_answer
#Initializing instance variables
	def initialize
		@secret_word = 'blah'
		@allowed_guesses = @secret_word.length * 2
		@guesses = 0
		@incorrect_letters_guessed = []
		@letter_guessed = ''
		@found_letters = ['_ ', '_ ', '_ ','_']
		@found_answer = false
		
	end
#Setting a conditional statement to check what letter the user chooses and seeing if it matches the letters of the secret word. Joining the letters
#together if they are a match. If letters don't match then giving an error message.
	def check_letter(user_letter)
	  if @secret_word.index(user_letter)
	    if @found_letters.include? user_letter
	      puts "You already guess that and its been accepted."
	    else
  	    found_letter_index = @secret_word.index(user_letter)
  	    @found_letters[found_letter_index] = user_letter
  	    @guesses += 1
  	  end 
	    puts @found_letters.join
	    if @found_letters.join == @secret_word
	         puts "Congrats you got it!"
	         @found_answer = true
	         puts @found_letters.join
	    end
	  else
	    puts "Noooope, try again!"
#If user guess a letter they already chose then an error message will appear. If the user runs out of chances before guessing the secret word then the game
#is over	    
	   if @incorrect_letters_guessed.include?(user_letter)
	      puts "You guessed that letter already."
	   elsif @allowed_guesses == @guesses
	      puts "Game over!"
	      @found_answer = !false
	   else
  	    @guesses += 1 
# User will be told how many guesses they have left after each guess.
  	    puts "You have #{(@allowed_guesses - @guesses)} guesses left"
  	    @incorrect_letters_guessed.push(user_letter)
  	  end
	    puts @found_letters.join
	  end
	end



#USER INTERFACE
  puts "Welcome to the Guess Word game!"
  word = GuessWord.new
    
  while !word.found_answer
    puts "Guess a letter!"
    @letter_guessed = gets.chomp
    if @letter_guessed.length > 1 
      puts "Please only single letters"
    else
      word.check_letter(@letter_guessed)
    end
  end
end


