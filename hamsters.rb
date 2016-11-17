puts "Enter hamster name"
hamster_name = gets.chomp

puts "Enter acceptable hamster volume level from 1 - 10"
max_vol = gets.to_i

puts "Enter fur color:"
fur_color = gets.chomp

puts "Do you think #{hamster_name} is a good canidate for adoption? (y/n)"
good_can = gets.chomp
	if good_can == "y"
		adopt = true
	elsif good_can == "n"
		adopt = false
	end
	
=begin 
adopt = gets.chomp
	if adopt == "y"
		adopt = "a good"
	else 
		adopt = "not a good"
	end
=end 

puts "How old is #{hamster_name}?"
hamster_age = gets.to_i
	if hamster_age == ""
		hamster_age = nil
	end

puts "So, #{hamster_name} puts out a volume level of #{max_vol} and has
#{fur_color} fur. You feel that #{hamster_name} is #{adopt} candidate for adoption 
at #{hamster_age} years old."
