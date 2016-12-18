decor_hash = {}

puts "What is the client's name?"
decor_hash[:name] = gets.chomp

puts "What is the client's age?"
decor_hash[:age] = gets.chomp.to_i

puts "How many children does the client have?"
decor_hash[:num_of_children] = gets.chomp.to_i

puts "What is the client's prefered decor theme?"
decor_hash[:pref_decor] = gets.chomp 

puts "Is this your first time with Dumpster Decorators? (y/n)"
new_customer = gets.chomp 
if new_customer == "y"
  new_customer = true 
elsif new_customer == "n" 
  new_customer = false  
end
decor_hash[:first_time] = new_customer

puts decor_hash

puts "Would you like to update any of the information? If not, enter 'none'"
update = gets.chomp 
if update == "y" 
  puts "Enter the key to update, and then the updated value"
    new_info = gets.chomp
    if new_info == "name"
      decor_hash[:name] = gets.chomp
    elsif new_info == "age"
      decor_hash[:age] = gets.chomp.to_i
    elsif new_info == "num_of_children"
      decor_hash[:num_of_children] = gets.chomp.to_i
    elsif new_info == "pref_decor"
      decor_hash[:pref_decor] = gets.chomp
    elsif new_info == "first_time"
      decor_hash[:first_time] = gets.chomp
    end 
end 

puts "Your updated decor information is: #{decor_hash}"