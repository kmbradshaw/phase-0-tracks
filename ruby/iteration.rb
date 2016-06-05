def prints_a_thing
	puts "We are learning"
	learning1 = "Ruby"
	learning2 = "HTML"
	yield(learning1, learning2)
end	

prints_a_thing {|learning1, learning2| puts "Specifically, we are learning #{learning1} and #{learning2}"}

animals = ["cat", "dogs", "snakes", "mice"]
loud_animals = []
p animals

animals.each do |animal|
loud_animals << animal.upcase
end 
p loud_animals

p animals 

animals.map! do |upcase_animals|
 p upcase_animals.upcase
end 

p animals


our_pets = {
	:black_cat => "Mewpers", 
	:tabby_cat => "Crookshanks", 
	:yorkie => "Thomas", 
	:maltipoo => "Arwen"
}

p our_pets

our_pets.each do |type, name|
	puts "#{name} is a #{type}"
	
end 

p our_pets