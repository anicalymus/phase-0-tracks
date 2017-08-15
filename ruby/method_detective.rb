# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".casecmp(“InVeStIgAtIoN”)
 => 0

 "iNvEsTiGaTiOn".casecmp?(“InVeStIgAtIoN”)
 => false

 "zom".insert(1, "o")
 => “zoom”

 "enhance".center(20)
 => "    enhance    "

 "Stop! You’re under arrest!".casecmp("STOP! YOU’RE UNDER ARREST!")
 => 0

 "Stop! You’re under arrest!".casecmp?("STOP! YOU’RE UNDER ARREST!")
 => true

 a = "the usual " 
 a << "suspects"
=> "the usual suspects"

 " suspects".insert(0, "the usual")
 => "the usual suspects"

 "The case of the disappearing last letter".delete 
 => "The case of the disappearing last lette"

 "The mystery of the missing first letter".<???>
 => "he mystery of the missing first letter"

 "Elementary,    my   dear        Watson!".<???>
 => "Elementary, my dear Watson!"

 "z".<???>
 => 122 
 (What is the significance of the number 122 in relation to the character z?)

 "How many times does the letter 'a' appear in this string?".<???>
 => 4