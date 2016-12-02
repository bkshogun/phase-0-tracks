# Establish a variable with the spy's name
spy_name = "Felicia Torres"

# Define array of vowels and constnants 
vowels = ["a", "e", "i", "o", "u"]
constnants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]

# Define empty arrays for later use
vowels_in_name = []
const_in_name = []

# Reverse spy_name, make sure it's all lowercase, and break into character array
spy_array = spy_name.downcase.split.reverse.join.chars 

# Iterate through spy_array, seperating vowels and constnants into respective arrays
spy_array.each do |i|
  if vowels.include?(i)
    puts "#{i} is a vowel"
    vowels_in_name << i 
  else 
    puts "#{i} is not a vowel"
    const_in_name << i 
  end 
end 

# Take character index, add one, and return value to new array

# Re-combine characters

# Output to user

p vowels_in_name
p const_in_name
p spy_array