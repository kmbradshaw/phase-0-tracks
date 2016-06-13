# Cat Class
class Cat
attr_reader :breed, :sex
attr_accessor :age
# Attributes - Age, Breed, Sex
	def initialize(age, breed, sex)
		puts "Initializing new cat instance"
		@age = age 
		@breed = breed
		@sex = sex
	end 
# A method that takes a number of pets and returns the cats action
	def pet(number)
		number.times do |purr|
			puts "purr"
		end
	end 
# A dinner time method that prints a string demanding food
	def dinner_time
		puts "*runs to food bowl*"
	end 
# A method that takes an item of furniture and returns a string declaring that it has been scratched
  def scratch(furniture)
    puts "I scratched your brand new #{furniture}"
  end 
end 
# Test Code for methods
# Cat.new(3, "tabby", "female").pet(2)
# Cat.new(3, "tabby", "female").dinner_time
# Cat.new(3, "tabby", "female").scratch("chair")

cat_array = []
puts "How many cats would you like to create?"
cat_number = gets.to_i

cat_number.times do 
	puts "How old is your cat?"
	age = gets.to_i
	puts "What breed is your cat?"
	breed = gets.chomp
	puts "Male or Female?"
	sex = gets.chomp
	cat_array << Cat.new(age, breed, sex)
end 

p cat_array