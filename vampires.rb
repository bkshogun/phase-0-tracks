puts "How many applicants will be entered?"
num_of_applicants = gets.to_i
counter = 0

while counter < num_of_applicants

	puts "What is your name?"
	vamp_name = gets.chomp

	puts "How old are you? What year were you born?"
	user_age = gets.to_i
	year_born = gets.to_i

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	garlic_bread = gets.chomp
	if garlic_bread == "y"
		garlic_bread = true
		garlic_result = "would like to order garlic bread"
	else
		garlic_bread = false
		garlic_result = "would not like to order garlic bread"
	end

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	insurance = gets.chomp
	if insurance == "y"
		insurance = true
		insurance_result = "would like to enroll in company insurance"
	else
		insurance = false
		insurance_result = "would not like to enroll in company insurance"
	end

vamp_pos = false 
done = false 

until vamp_pos || done
	puts "Next we'll need some allergy information. Enter allergies one at a time, type 'done' when finished"
	allergy = gets.chomp
	if allergy == "sun"
  		puts "Thanks but no thanks"
  		vamp_pos = true 
  	elsif allergy == "done"
  	done = true 
	end 
end 

verify_age = (2016 - year_born)

if vamp_pos == false
	if vamp_name == "Drake Cula" || vamp_name == "Tu Fang"
		puts "Applicant's age, garlic and insurance preferences are irrelevent because his name is #{vamp_name} and he is definitely a vampire"
	elsif (user_age == verify_age) && (garlic_bread || insurance)
		puts "Applicant #{vamp_name} got his age right, #{garlic_result}, #{insurance_result} and is probably not a vampire"
	elsif (user_age != verify_age) && (!garlic_bread && !insurance)
		puts "Applicant #{vamp_name} got his age wrong, #{garlic_result}, #{insurance_result} and is almost certainly a vampire"
	elsif (user_age != verify_age) && (!garlic_bread || !insurance)
		puts "Applicant #{vamp_name} got his age wrong, #{garlic_result}, #{insurance_result} and is probably a vampire"
	else 
		puts "Results inconclusive"
	end
end 		

counter += 1 

end
