puts "Player 1, enter a word (unique letters only, please): "
word = gets.chomp 
word_array = word.split("")

game_array = []
underscore_string = "_" * word.length 
game_array = underscore_string.split("")

guess_count = 0
guess_array = [] 
max_guesses = word.length * 2

until guess_count == max_guesses || (word_array == game_array)
  remaining_guesses = ((word.length * 2) - guess_count)
  puts "Player 2, you have #{remaining_guesses} guesses remaining"
  print "Enter a letter for guess # #{guess_count + 1}: "
  guessed_letter = gets.chomp 
  #guess_array << guessed_letter                       # adds guessed letter to an array
  if word_array.include?(guessed_letter)               # compares guessed letter to inputter word
    array_index = word_array.index(guessed_letter)     # finds index position of guessed letter 
    game_array.delete_at(array_index)                  # deletes underscore at guessed letter index 
    game_array.insert(array_index, guessed_letter)     # inserts guessed letter at deleted position
    p game_array.join                                  # outputs current status of the secret word
    puts "___________________________"
  else 
    puts "Sorry, guess again"
  end 
guess_count += 1

if guess_count == max_guesses
  puts "Better luck next time, dummy"
elsif word_array == game_array
  puts "Nicely done!"
else
end 
    
end 