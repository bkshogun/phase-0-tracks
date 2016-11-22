# an encrypt method that advances every letter of a string one letter forward: we would first have
# to define a variable, and establish a counter so we don't create an infinite loop. Calling the
# index function "[]" on the variable will return the first letter of the variable, and the coutner
# will return every subsequent letter .NEXT FUNCTION

# a decrypt method that reverses the process above: for this, I think we'd have to define the entire alphabet as 
# a string variable. Then, we can call the .reverse and .next methods on the variable, along with an index to 
# reverse the process. 

counter = 0

def encrypt(string)
  counter = 0 
  while counter < string.length 
    string_enc = string[counter].next
    	if string_enc == "aa" 
    		string_enc = "a"
    	end
    print string_enc
    counter += 1 
  end 
end 

def decrypt(string)

counter = 0
	while counter < string.length
		var1 = string[counter]
		var2 = (var1.ord - 1).chr 
		if 
			var2 == "`"
			var2 = "z"
		end
	print var2
	counter += 1
	end
end 


encrypt ("abc")
puts ""
encrypt ("zed")
puts ""
decrypt ("bcd")
puts "" 
decrypt ("afe")
