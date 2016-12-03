class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(bark)
  	puts "Woof " * bark
  end

  def roll_over(dog_name)
    puts "#{dog_name} *rolls over*"
  end 

  def dog_years(human_years)
  	dog_y = human_years * 7
  	puts dog_y
  end 

  def bath(dog_name)
  	puts "#{dog_name} runs away"
  end 

  def initialize
  	puts "Initializing new puppy instance..."
  end 
end

bauer = Puppy.new

bauer.fetch("ball")
bauer.speak(5)
bauer.roll_over("Bauer")
bauer.dog_years(7)
bauer.bath("Bauer")

class Ballplayer

  def initialize 
   	puts "Initializing new Ballplayer instance..."
  end 

  def single(player_name)
  	puts "#{player_name} hits a single!"
  end

  def double(player_name)
  	puts "#{player_name} hits a double!"
  end 

  def player_average(player_name, hits, at_bats)
    hits = hits.to_f
    at_bats = at_bats.to_f
    batting_average = (hits / at_bats).round(3)
    puts "#{player_name} is hitting #{batting_average} this season"
  end 

end 

mets = Ballplayer.new

mets.single("Wright")
mets.player_average("Cespedes", 74, 212)
mets_roster = []

(1..50).each do |i|
mets_roster << "player_num_#{i}"
mets_roster.uniq 
end 

mets_roster.each do |i|
  mets.double(i)
end