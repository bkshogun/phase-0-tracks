# Establish a variable with the spy's name
spy_name = "Felicia Torres"

# Define array of vowels 
vowels = ["a", "e", "i", "o", "u"]

# Then break the string into the individual words, and reverse those words
# Transpose vowels first, re-join, and then reverse?
#spy_name = spy_name.split.reverse

# Break up spy name into individual characters in an array
spy_array = spy_name.chars 

# Check if any charcaters in spy_array are in vowels array

spy_array.any? {|x| ["a", "e", "i", "o", "u"].include?(x)}

# Find corresponding index in vowel array

# Add one to vowel array index

def next_vowel = (vowels.index('#vowel') + 1)
next_next_vowel = vowels[next_vowel]
p next_next_vowel
end

# Match vowel in spy name array to vowel array, then add one to index

p spy_name
p spy_array 