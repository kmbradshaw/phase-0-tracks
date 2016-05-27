puts "What is your name?"
name = gets.chomp
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