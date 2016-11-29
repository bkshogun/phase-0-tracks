
# Rocky Films
=begin 
rocky_films = {1 => "Apollo Creed", 
	2 => "Apollo Creed (again)", 
	3 => "Clubber Lang", 
	4 => "Ivan Drago", 
	5 => "Tommy Gunn"
}

# modify code, change character to actor or the other way around, 
# then print again

rocky_films.each do |film_num, bad_guy|
	puts "In Rocky #{film_num}, Rocky Balboa is the good guy, and #{bad_guy} is the bad guy"
end 
=end 

greek_let = ["alpha", "beta", "gamma", "delta", "epsilon"]
puts "Original Greek letters:"
p greek_let

greek_let.each do |letter|
   if letter.length < 5
   	greek_let.delete letter
   end 
end

puts "After .each & .delete call removed any items less than five letters in length:"
p greek_let



ital_num = {1 => "uno", 2 => "due", 3 => "tre", 4 => "quattro", 5 => "cinque"}
puts "Original Italian letters:"
p ital_num.values

ital_num.keep_if {|eng_num, ital_num| ital_num.length <= 3}
puts "Italian numbers after .keep_if is called on original hash, keeping only items equal to or less than three letters in length:"
p ital_num



sharks = ["white", "hammerhead", "reef", "nurse", "thresher"]
puts "Original shark data: "
p sharks

sharks.delete_if {|shark| shark.include? "s" }

puts "Shark after those species containing the letter 's' were removed, using .delete_if and .include in the block"
p sharks


numbers = [1, 2, 3, 4, 5, 6, 7, 8]

puts "Original arrray: #{numbers}"
 
def keep_num
   yield 
end 

keep_num do 
	numbers.keep_if {|n| n > 5}
end 

puts "Array after method call .keep_if to keep only numbers greater than five: #{numbers}"

