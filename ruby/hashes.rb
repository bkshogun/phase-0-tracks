# promp user for all info: clients name, age, number of children, decor theme, etc and store them in variables

puts "Enter applicant first name:"
first_name = gets.chomp

puts "Enter applicant last name:"
last_name = gets.chomp

# I can mix in integers by converting a inputted string to an integer

puts "Enter applicant age:"
age = gets.to_i

# to mix in multiple variable types, I can ask first if the user has children by asking them to answer yes or no

puts "Do you have children?"
children = gets.chomp
if children == "y" || children == "yes"
	children = true
   puts "Enter number of children: "
   num_of_children = gets.to_i
else children = false  
   num_of_children = "0"
end 

puts "What is your preferred decor theme? "
decor_theme = gets.chomp

# take all user info, and assign it to key values within the hash. Call methods to correct capitalization, formalize input 

application = {
	full_name: first_name.capitalize + " " + last_name.capitalize, 
	age: age, 
	children: children,
	num_of_children: num_of_children,
	decor_theme: decor_theme.capitalize,
}

# Output users answers for verification 

puts "You answered: "
puts "1. Full name: #{application [:full_name]}"
puts "2. Age #{application [:age]}"
puts "3. Children: #{application [:children]}"
puts "4. No. of children: #{application [:num_of_children]}"
puts "5. Your preferred decor theme is: #{application [:decor_theme]}"
puts "Please review the information. If anything is incorrect, enter the data line and then enter the corrected information. If everything is correct, enter 'none'"

# Allow for user correction, assign proper values to their respective keys within the hash

corrected_info = gets.chomp
   if corrected_info == "1"
   	   puts "Enter '1' for your first name, or '2' for your last name"
   	   first_or_last = gets.chomp
   	      if first_or_last == "1"
   	         first_name = gets.chomp
   	      elsif first_or_last == "2"
   	      	  last_name = gets.chomp
   	      end
   elsif corrected_info == "2"
   	  application[:age] = gets.to_i
   elsif corrected_info == "3"
   	  application[:children] = gets.chomp
   elsif corrected_info == "4"
   	  application[:num_of_children] = gets.to_i
   elsif corrected_info == "5"
   	  application[:decor_theme] = gets.chomp
   elsif corrected_info == "none"
      puts "Thank you for your submission"
   end 

# Reprint user values

p application.values 

# Abitrary verification for applicant employment 

if ((application[:age] > 18) && (application[:age] < 40)) || ((application[:age] > 40) && (application[:children] = true))
	puts "Congrats! Welcome to the team. You start... now!"
else
	puts "Sorry... don't call us. We won't call you either"
end 

# When I stored a key inside a variable, and called hash[variable], it retutned a the value of the
# key  
# I tested to see if adding two values, such as hash[age] + hash[name] would affect the
# original hash by then calling the hash immediately afterwards, and it does not affect the original
# hash 
# Where should methods be called within the hash when printing back to the user? After test,
# methods should be called within the hash.
