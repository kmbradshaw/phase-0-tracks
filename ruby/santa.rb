#define Santa class with methods
class Santa 
	attr_reader :age, :ethnicity
	attr_accessor :gender
	
	reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]	

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0 
	end 
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end

	def celebrate_birthday
		@age += 1
	end 

	def get_mad_at(reindeer)
		reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		location = reindeer_ranking.index(reindeer)
		reindeer_ranking.insert(8, reindeer_ranking.delete_at(location))
	end 
end 

#Test code for Santa Class
# santas = []
#adds two new Santas to the array
# santas << Santa.new("gender fluid", "white")
# santas << Santa.new("female", "black")
#iterates through each Santa and asks them to say "Ho, ho, ho! [...]"
# santas.each do |talk|
#	talk.speak
# end 
# calls eat_milk_and_cookies method on the first Santa in the array
# santas[0].eat_milk_and_cookies("Chocolate Chip")

# changes the gender of the first Santa to male
# p santas[0]
# santas[0].gender = "male"
# p santas[0]

#prints the ethinicity of the second Santa
# p santas[1].ethnicity

# test the age of santas before celebrate_birthday call 
# p santas[0].age
# test the celebrate_birthday method
# p santas[0].celebrate_birthday

# test get mad at method
# p santas[0].get_mad_at("Rudolph")

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_ages = (1..140).to_a


100.times do 
	gender = example_genders.sample
	ethnicity = example_ethnicities.sample
	age = example_ages.sample {celebrate_birthday}
	santa = Santa.new(gender, ethnicity)
	puts "Santa is #{santa.gender} and #{santa.ethnicity} and #{age}"
end 

