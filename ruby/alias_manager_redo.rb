
def alias_maker(spy_name)

  split_name = spy_name.downcase.split.reverse.join(" ").chars

  vowels = ["a", "e", "i", "o", "u"]
  consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  spy_alias = ""

  split_name.each do |letter| 
    if vowels.include?(letter)
      shifted_vowel = vowels.index(letter) + 1 
      new_vowel = vowels[shifted_vowel]
      spy_alias += new_vowel
    elsif consonants.include?(letter)
      shifted_consonant = consonants.index(letter) + 1 
      new_consonant = consonants[shifted_consonant]
      spy_alias += new_consonant
    elsif letter == " "
      spy_alias += " "
    end 
  end 

  spy_alias = spy_alias.split.map(&:capitalize).join(" ")
  return spy_alias
end 

alias_hash = {}
exit_program = false 
until exit_program == true
  puts "Enter spy name, or 'quit' to exit: "
  spy_name = gets.chomp
  if spy_name != "quit" 
	puts alias_maker(spy_name)
	alias_hash[spy_name] = alias_maker(spy_name)
  elsif spy_name == "quit"
	alias_hash.each do |key, value|
	  puts "#{key} is also known as #{value}"
	end 
	exit_program = true 
  end
end