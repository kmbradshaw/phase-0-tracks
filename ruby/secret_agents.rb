
#define a method for encryption
def encrypt(password)
index = 0
  #loops if password is greater than zero
  while password.length > index
  #sets all of the letters in the given input equal to the next letter in the alphabet
  password[index] = password[index].next
  index += 1
  end
#keeps spaces as spaces instead of exlamation marks
password.sub!("!", " ")
#prints the encrypted password
password
end

#define a method for decryption
def decrypt(password)
index = 0
#sets condition that loops if password is greater than zero
	while password.length > index
	#sets all letters in the given input equal to the previous letter
	#.ord is a set system of string values that evaluates string characters
	#as an integer
	#.chr uses the same system to evaluate integers as strings
	#in the paranthesis we are setting each letter in the user input to an integer value
	#subtracting one (thus moving backwards)
	#then converting back into a string
	#note - we would not be able to use this method if we weren't instructed to assume lowercase
	#input and out (without accounting for more edge cases). 
	password[index] = (password[index].ord - 1).chr
	#removes edge case issues with z
	password.sub!("`", "z")
	index += 1
	end
#prints the decrypted password
password
end 

p decrypt(encrypt("swordfish"))
#the first thing we are doing is encrypting the string "swordfish" and getting a string of 
#"txpsegjti" (we don't see this step since our encryption method doesn't involve printing the result)
#from there the program is inputing the encrypted string into our decryption method returning the
#value of swordfish


#ask secret agent whether they need to encrypt or decrypt
puts "Do you need to encrypt or decrypt?"
preference = gets.chomp
#ask user for password
puts "what is your password?"
secret = gets.chomp

#decrypts or encrypts password based on preference
#third condition added if user input not understood
if preference == "encrypt"
	puts encrypt(secret)
elsif preference == "decrypt"
	puts decrypt(secret)
else 
	puts "huh?"
end 
