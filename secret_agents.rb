# an encrypt method that advances every letter of a string one letter forward: we would first have
# to define a variable, and establish a counter so we don't create an infinite loop. Calling the
# index function "[]" on the variable will return the first letter of the variable, and the coutner
# will return every subsequent letter .NEXT FUNCTION

# a decrypt method that reverses the process above: for this, I think we'd have to define the entire alphabet as 
# a string variable. Then, we can call the .reverse and .next methods on the variable, along with an index to 
# reverse the process. 

=begin
alphabet = "abcdefghijklmnopqrstuvwxyz"

password = gets.chomp
index = 0
=end 

index = 0

def encrypt("string")
	while index < string.length
	print string[index].next 
	index += 1
end 

encrypt "abc"
encrypt "zed"
encrypt "bcd"

