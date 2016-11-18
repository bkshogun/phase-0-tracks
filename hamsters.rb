puts "Enter hamster name"
hamster_name = gets.chomp

puts "Enter acceptable hamster volume level from 1 - 10"
max_vol = gets.to_i

puts "Enter fur color:"
fur_color = gets.chomp

puts "Do you think #{hamster_name} is a good canidate for adoption? (y/n)"
adopt = gets.chomp
	if adopt == "y" or "yes"
		adopt = "a good"
	else 
		adopt = "not a good"
	end

puts "How old is #{hamster_name}?"
hamster_age = gets.chomp
	if hamster_age == ""
		hamster_age = nil
	else 	
	end

print "So, #{hamster_name} puts out a volume level of #{max_vol} out of 10 and has
#{fur_color} fur. You feel that #{hamster_name} is #{adopt} candidate for adoption 
at #{hamster_age} years old."