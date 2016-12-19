# define an array with Greek letters
greek_let = ["alpha", "beta", "gamma", "delta", "epsilon"]
puts "Original Greek letters:"
p greek_let

# iterate through, delete items that are less than five letters in length 
greek_let.each do |letter|
   if letter.length < 5
   	greek_let.delete letter
   end 
end

# output new array
puts "After .each & .delete call removed any items less than five letters in length:"
p greek_let

# define new hash with digit keys and values of spelled out Italian numbers
ital_num = {1 => "uno", 2 => "due", 3 => "tre", 4 => "quattro", 5 => "cinque"}
puts "Original Italian letters:"
p ital_num.values

# iterate through hash, keeping only the values that are greater than or equal to three letters in length
ital_num.keep_if {|eng_num, ital_num| ital_num.length <= 3}
puts "Italian numbers after .keep_if is called on original hash, keeping only items equal to or less than three letters in length:"
p ital_num

# define new array with various species of shark and print original data
sharks = ["white", "hammerhead", "reef", "nurse", "thresher"]
puts "Original shark data: "
p sharks

# iterate through shark array, deleting any values that contain the letter 's'
sharks.delete_if {|shark| shark.include? "s" }

# output altered data
puts "Shark after those species containing the letter 's' were removed, using .delete_if and .include in the block"
p sharks

# define new array of numbers, 1 - 8
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

puts "Original arrray: #{numbers}"

# define keep_num method, and use yield to call the block 
def keep_num
   yield 
end 

# block to keep numbers in the array that are greater than 5
keep_num do 
	numbers.keep_if {|n| n > 5}
end 

puts "Array after method call .keep_if to keep only numbers greater than five: #{numbers}"