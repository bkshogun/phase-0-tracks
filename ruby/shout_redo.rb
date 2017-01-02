=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + ":("
	end 

	def self.yell_happily(words)
		words + "!!!" + ":)" + "HUZZAHHH!"
	end

end 
=end 

module Shout 
	def yell_angrily(words)
		words + "!!!" + " :("
	end 
end 

class Family
	include Shout 
end 

class Boss
	include Shout 
end 

aunt_barbara = Family.new
p aunt_barbara.yell_angrily("Did you seriously break another window")

dumbass_jerkface = Boss.new 
p dumbass_jerkface.yell_angrily("No matter how many times you ask, no I will not punch myself in the face")