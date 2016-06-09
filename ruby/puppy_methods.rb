class Puppy
  def initialize
    puts "intializing new puppy instance..."
  end 
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
    number.times do  
      puts "Woof!"
    end 
  end

  def roll_over
    puts "*rolls over*"
  end 
 
  def dog_years(number)
    p number * 7
  end 
  
  def quiet_bark
    puts "...woof..."
  end 
end

Puppy.new.fetch("ball")
Puppy.new.speak(3)
Puppy.new.roll_over
Puppy.new.dog_years(1)
Puppy.new.quiet_bark


class Kitten 
  def initialize
    puts "Initializing kitten instance...."
  end 

  def sleep
    puts "*...sleeping...mrow*"
  end 

  def scratch(item)
    puts "I scratched your brand new #{item}...mrow"
  end 

end 

cats = [] 
50.times { |time| cats << Kitten.new }

cats.each do |cat|
  cat.sleep 
  cat.scratch("couch")
end 
