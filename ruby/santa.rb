class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender 

   def initialize(gender, ethnicity)
      @gender = gender
      @ethnicity = ethnicity
      @reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
      @age = 0 
      #puts "Initializing Santa instance..."
      #puts "I'm a reindeer, my gender is #{@gender} and my ethnicity is #{@ethnicity}"
   end 

   def speak
      puts "#{@gender} Santa says Ho, ho, ho! Happppppy holidays! Things are great because I'm #{@ethnicity}"
   end 

   def eat_milk_and_cookies(cookie)
      puts "That was a good #{cookie} cookie"
   end 

   def celebrate_birthday(santa)
      age = @age + 1
      puts "#{santa} is #{age} year(s) old"
   end 

   def get_mad_at(reindeer)
   	  @reindeer = @reindeer.sort
   	  reindeer_pos = @reindeer.index(reindeer)
   	  print @reindeer
   	  puts "\n#{reindeer} is in position #{reindeer_pos + 1}"
   	  @reindeer.delete_at(reindeer_pos)
   	  @reindeer.push(reindeer)
   	  puts "But, Santa is now mad at #{reindeer}, and he is in last place."
   	  print @reindeer
   end 	
end 

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i].capitalize, example_ethnicities[i])
   end 

santas.uniq.each do |santa|
	santa.speak
   end

claus = Santa.new("Martian", "Omnisexual")
claus.celebrate_birthday("Martian Santa")

bad_reindeer = Santa.new("","")
bad_reindeer.get_mad_at("Dancer")


class Many_Santa
	
attr_accessor :rand_santa_number, :rand_age, :rand_ethnicity, :rand_gender	

   def rand_santa_number
      num_array = []
      (0..1000).each do |n|
         num_array << "Santa_" + n.to_s 
      end 
      num_array.sample
   end 

   def rand_age
      num_array = []
      (0..140).each do |n|
         num_array << n 
      end
      rand_numb = num_array.sample 
      #puts "A random age would be #{rand_numb}."
   end 

   def rand_ethnicity
      example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefers not to say", "a Mystical Creature (unicorn)", "N/A", "a Martian"]   
      random_ethnicity = example_ethnicities.sample 
      #puts "A random ethnicity would be #{random_ethnicity}"
   end 
   
   def rand_gender
      example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "trigender"]
      random_gender = example_genders.sample
      #puts "A random gender would be #{random_gender}"
   end 
end 

new_santa = Many_Santa.new 

santa_name = new_santa.rand_santa_number
santa_age = new_santa.rand_age
santa_ethnicity = new_santa.rand_ethnicity
santa_gender = new_santa.rand_gender

puts "\n#{santa_name} is #{santa_age} years old, is #{santa_ethnicity} and identifies as a #{santa_gender}" 
