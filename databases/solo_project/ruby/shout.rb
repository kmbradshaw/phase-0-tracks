# module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
#	end 
#	def self.yell_happily(words)
#		words.upcase + " :)"
#	end 
#end 

# p Shout.yell_angrily ("Why is it so late, I'm tired")
# p Shout.yell_happily ("But I really am getting the hang of this for now")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yell_happily(words)
		words.upcase + " :)"
	end
end

class Traffic
	include Shout
end 

class Surprise
	include Shout
end 

traffic = Traffic.new
p traffic.yell_angrily("I'm running so late")
p traffic.yell_happily("I didn't want to go to that appointment anyway")
surprise = Surprise.new
p surprise.yell_happily("Funnel Cake")
p surprise.yell_angrily("But I'm a cat person..")
