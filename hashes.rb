# promp user for all info: clients name, age, number of children, decor theme, etc
# to mix in multiple variable types, I can ask first if the user has children by asking them to answer yes or no

puts "Enter applicant first name:"
first_name = gets.chomp

puts "Enter applicant last name:"
last_name = gets.chomp

puts "Enter applicant age:"
age = gets.to_i

puts "Do you have children?"
children = gets.chomp
if children == "y" || "yes"
   puts "Enter number of children: "
   num_of_children = gets.to_i
else children = false 
end 

application = {
	full_name: first_name + " " + last_name, 
	age: age, 
	children: children, 
	num_of_children: num_of_children,
}

puts application.values