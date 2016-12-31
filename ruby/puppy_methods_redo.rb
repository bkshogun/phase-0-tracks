class Puppy 
  def initialize
    puts "Initializing new puppy instance..."
  end 

  def fetch(toy)
  	puts "I brought back the #{toy}!"
  end 

  def speak(int)
  	#int.times {|x| puts "Woof!"}
  	puts "Woof!" * int
  end 

  def roll_over
  	puts "*rolls over*"
  end 

  def dog_years(human_years)
    dog_years = (human_years * 7)
    dog_years 
  end 

  def bath(name)
  	puts "#{name} runs away!"
  end 

end 

whisper = Puppy.new
whisper.fetch("bone")
whisper.dog_years(4)
whisper.speak(3)
whisper.bath("Whisper")

class Martial_artist

  def initialize 
  	puts "Initializing new martial artist class..."
  end 

  def roundhouse_kick(name)
  	puts "#{name} delivers a roundhouse kick!"
  end 

  def straight_punch(name)
  	puts "#{name} deals a straight punch!"
  end 

  def headbutt(name)
  	puts "#{name} lands a headbutt!"
  end 

end 

ninja = Martial_artist.new 
first_names = ["Jean", "Ron", "Don", "Jon", "John"]
artist_array = []

(1..50).each do |i|
  new_artist = first_names.sample + "-Claude Van Damme"
  artist_array << new_artist
end 

puts artist_array

artist_array.each do |i|
  puts ninja.roundhouse_kick(i)
  puts ninja.straight_punch(i)
  puts ninja.headbutt(i)
  puts "\n"
end