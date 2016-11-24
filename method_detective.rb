# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

puts "iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”

puts "zom".insert 1, "o"

# "enhance".<???>
# => "    enhance    "

puts "enhance".center(20)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

puts "Stop! You're under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"

puts "the usual".insert(9, " suspects")

# " suspects".<???>
# => "the usual suspects"

puts " suspects".insert(0, "the usual")

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

puts "The mystery of the missing first letter".slice(1..38)

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

"Elementary,    my   dear        Watson!".squeeze

# "z".<???>

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the dec ASCII integer equivalent for the character "z"

# "How many times does the letter 'a' appear in this string?".<???>
# => 4

"How many times does the letter 'a' appear in this string?".count("a")

