encrypted_word = "abc"

def encrypt_method(string)
  
  index = 0
  while index < string.length
    string[index] = string[index].next
    index +=1
  end

  puts string

end

encrypt_method(encrypted_word)