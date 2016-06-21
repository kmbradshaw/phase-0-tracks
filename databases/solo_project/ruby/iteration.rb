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

numbers = [1, 2, 3, 4, 5]
p numbers

numbers_letters = { 
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
}
p numbers_letters

p numbers.delete_if {|less_than| less_than < 2 }
p numbers_letters.delete_if{ |key, value| key < 4}

p numbers.select { |digits| digits.even?}
p numbers_letters.select {|key, value| key.even?}

p numbers.keep_if{|more| more > 2}
p numbers_letters.keep_if{ |key, value| key >4} 

p numbers.reject{|last| last = 5}
p numbers_letters.reject{|key, value| key = 5}