#define Santa class with 3 methods
class Santa 
	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]	
	age = 0
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
	end 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		new_age = age + 1
	end 

	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		location = reindeer_ranking.index(reindeer)
		reindeer_ranking.insert(8, reindeer_ranking.delete_at(location))
	end 

	def gender= (new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end 

end 

#Test code for Santa Class
santas = []
#adds two new Santas to the array
santas << Santa.new("gender fluid", "white")
santas << Santa.new("female", "black")
#iterates through each Santa and asks them to say "Ho, ho, ho! [...]"
santas.each do |talk|
	talk.speak
end 
#calls eat_milk_and_cookies method on the first Santa in the array
santas[0].eat_milk_and_cookies("Chocolate Chip")
