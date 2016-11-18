puts "What is your name?"
vamp_name = gets.chomp

puts "How old are you? What year were you born?"
user_age = gets.to_i
year_born = gets.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

verify_age = (2016 - year_born)

if (user_age == verify_age) && (garlic_bread || insurance)
	puts "Probably not a vampire"
elsif (user_age != verify_age) && (!garlic_bread || !insurance)
	puts "Probably a vampire"
elsif (user_age != verify_age) && !garlic_bread && !insurance
	puts "Almost certainly a vmapire"
elsif name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire"
else 
	puts "Results inconclusive"
end 
		