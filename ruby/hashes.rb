#Create a Hash to stored user data
survey = Hash.new("oops")
#Prompt user for information
#Store information in hash as appropriate data types
puts "What is your full name?"
survey[:name] = gets.chop
puts "How old are you?"
survey[:age] = gets.to_i
puts "How many children do you have?"
survey[:number_of_children] = gets.to_i
puts "What is your favorite color?"
survey[:favorite_color] = gets.chop

puts "Have you graduated College? (yes/no)"
college = gets.chomp
if college == "yes" 
	survey[:College_Graduate] = true
else 
	survey[:College_Graduate] = false
end
#Return result when all information is collected
p survey
#Prompt user for any corrections
#Store data and update hash if applicable
#Print finalized Hash

