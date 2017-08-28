# encryt abc

def encrypt_method(string)
  
  index = 0
  while index < string.length
    string[index] = string[index].next
    index +=1
  end
   #puts string
   #string

end



#decrypt bcd

def decrypt_method(string)
  
index = 0
alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
while index < string.length
  current_letter = string[index]
  current_index = alpha.index(current_letter)
  new_letter = alpha[current_index-1]
  string[index] = new_letter
  index +=1
  end
 #puts string
 #string
end
  
#encrypt_method("abc")
#encrypt_method("zed")
#decrypt_method("bcd")
#decrypt_method("afe")

#decrypt_method(encrypt_method("swordfish"))

#"zed" should've returned "afe", but instead returned "abfe". This happened because of the edge case and retured "aa" instead of "a".

# Driver Code
def password_encrypt
  puts "Do you want to decrypt or encrypt a password?"
  encryption_pattern = gets.chomp
  
  
  def encrypt_method(string)
  
    index = 0
    while index < string.length
      string[index] = string[index].next
      index +=1
    end
   #puts string
   string

  end
  
  def decrypt_method(string)
  
    index = 0
    alpha = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    while index < string.length
      current_letter = string[index]
      current_index = alpha.index(current_letter)
      new_letter = alpha[current_index-1]
      string[index] = new_letter
      index +=1
    end
  #puts string
    string
  
  end
  
  if encryption_pattern == "encrypt"
    puts "What is your password?"
    password_input = gets.chomp
    puts encrypt_method(password_input)
  elsif encryption_pattern == "decrypt"
    puts "What is your password?"
    password_input = gets.chomp
    puts decrypt_method(password_input)
  else "Im sorry I didn't get that."
  end
  

end

password_encrypt

