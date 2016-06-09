#define Santa class with 3 methods
class Santa 
	def initialize
		puts "Initializing Santa instance..."
	end 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
end 

#Test code for Santa Class
Santa.new.speak
Santa.new.eat_milk_and_cookies("Chocolate Chip")