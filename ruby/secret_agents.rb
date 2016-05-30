
#define a method for encryption
#set condition that loops if password is greater than zero
#index password and replace with next letter
#print the result
def encrypt(password)
  index = 0
  while password.to_s.length > index
  word = password[index].next
  word.sub!("!", " ")
  print word
  index += 1
  end
end

#define a method for decryption
#set condition that loops if password is greater than zero
#index password and replace with previous letter
#print the result
def decrypt(password)
	index = 0
	while password.to_s.length > index
	word = (password[index].chr.ord - 1). chr
	word.sub!("`", "z")
	print word
	index += 1
	end
end 

decrypt(encrypt("swordfish"))

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
