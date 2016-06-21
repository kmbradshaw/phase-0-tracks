#create a method for locating vowels, spaces and consonants
#if consonant, translate to next consonant
#if vowel, translate to next vowel
def alias_char(char)
	i = 0 
	vowels = "aeiou"
	consonants = "bcdfghjklmnpqrstvwxyz"
	if char == " "
		" "
#removes edge case issues
	elsif char == "z"
		"b"
	elsif char == "u"
		"a"
	elsif consonants.index(char)
		locate_consonant = consonants.index(char[i])
		new_consonant = consonants[locate_consonant + 1]
	else
		vowels.index(char)
		locate_vowel = vowels.index(char[i])
		new_vowel = vowels[locate_vowel + 1]
end 
end

#iterates through each letter, combing into translated alias
def alias_name(name)
	char_index = 0 
	alias_response = ""
		while char_index < name.length
			alias_response << alias_char(name.downcase[char_index])
			char_index += 1
		end
	alias_response
end 

alias_storage = {}

loop do 
	puts "Please enter your full name"
	full_name = gets.chomp
	name_split = full_name.split(" ")
	first_name = name_split[0]
	last_name = name_split[1]
		puts "Your spy name is #{alias_name(last_name + " " + first_name)}"
	alias_storage[full_name] = alias_name(last_name + " " + first_name)
		puts "If you would like to enter another name press enter, otherwise type 'q' for quit"
		repeat = gets.chomp
	break if repeat == "q"
end 

alias_storage.each do |k,v|
	p "#{k} is actually #{v}"
end 


