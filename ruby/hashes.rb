#Create a Hash to stored user data
survey = Hash.new
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
	survey[:college_graduate] = true
else 
	survey[:college_graduate] = false
end
#Return result when all information is collected
p survey
#Prompt user for any corrections
puts "Do you need to make any corrections? (yes/no)"
corrections = gets.chomp
#if correctios are necessary, store new data in hash
if corrections == "yes"
	puts "What do you need to change?"
	change_value = gets.chomp
	change_value = change_value.gsub(/\s+/,"_").to_sym
	puts "What would you like to change it to?"
	change = gets.chomp
	survey[change_value] = change
end 

#print updated hash
p survey