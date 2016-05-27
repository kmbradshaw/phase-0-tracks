puts "How many employees need to be processed?"
number = gets.to_i

while  number > 0
number =  number -1
puts "What is your name?"
name = gets.chomp
puts "Do you have an allergies? (type done when finished)"
	allergies = gets.chomp
until allergies == "done" || allergies == "sunlight"
	allergies = gets.chomp
end 
	if allergies == "sunlight"
		puts "probably a vampire"
		next 
	end

puts "How old are you? What year were you born?"
age = gets.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp

if bread == "yes" && age < 100
	puts "probably not a vampire"
elsif age > 100 && bread == "no" && health == "no"
	puts "Almost certainly a vampire"
elsif age > 100 && (bread == "no"|| health == "no")
	puts "probably a vampire"
elsif name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire"
else 
	puts "Results inconclusive"
end 
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"
abort 