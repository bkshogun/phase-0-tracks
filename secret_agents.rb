# an encrypt method that advances every letter of a string one letter forward: we would first have
# to define a variable, and establish a counter so we don't create an infinite loop. Calling the
# index function "[]" on the variable will return the first letter of the variable, and incrementing
# the counter as the index argument will call the next letter in the string. Implementing the .next
# method on the string will call the subsequent letter in the alphabet. This isn't psuedo coding, is
# it.

# to decrypt the string, we'd have to essentially take each letter of the string and return the
# prior letter of the alphabet for each. To do this, I'll have to find a way to convert each letter
# of the given string to an integer, and subtract one from that integer, and then convert that
# integer back to the coresponding letter in the string. It looks like this can be done with a
# combination of the .ord and .chr functions

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

def decrypt(string2)
counter = 0
	while counter < string2.length
		var1 = string2[counter]
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
puts ""
decrypt (encrypt("swordfish"))

# decrypt(encrypt("swordfish")) on line 42 does not work, and I'm not entirely sure why. Because the
# encrypt method is called withing parenthesis, that should be evaluated first. When it is encoded
# and returned as an encoded string as an argument to the decrypt method, that method should be
# called on it and thus decoded back to "swordfish". My guess is that the encrypt function is merely
# printing, not necessarily returning a value.
