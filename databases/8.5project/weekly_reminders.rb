
# require sqlite3 and faker (for address, phone numbers, and business names)
require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("reminders.db")
db.results_as_hash = true

#create a reminders table
create_table_reminders = <<-SQL
  CREATE TABLE IF NOT EXISTS reminders(
    id INTEGER PRIMARY KEY,
    business_name VARCHAR(255),
    address VARCHAR(255)
  )
SQL

#create a scheduled table
create_table_scheduled = <<-SQL
  CREATE TABLE IF NOT EXISTS scheduled(
    id INTEGER PRIMARY KEY,
    business_name VARCHAR(255),
    address VARCHAR(255)
  )
 SQL

db.execute(create_table_reminders)
db.execute(create_table_scheduled)

# define a method for creating needed appointments
def needed_appointments(db, business_name, address)
  db.execute("INSERT INTO reminders (business_name, address) VALUES (?, ?)", [business_name, address])
end

# populate some random appointments to be scheduled
1.times do
  needed_appointments(db, Faker::Company.name, Faker::Address.street_address)
end

#User Interface
puts "You have appointments to schedule this week"

#list all of the randomly populated appointments that have yet to be scheduled
appointments = db.execute("SELECT * FROM reminders")
appointments.each do |appointments|
puts "You need to schedule an appointment with #{appointments['business_name']} located at #{appointments['address']}"
end 

#create a LOOP that asks the user if they have scheduled their appointments
loop do 
puts "Have you scheduled your appointments? (y/n)"
scheduled = gets.chomp
if scheduled == "y"
	break
elsif scheduled == "n"
	puts "Do you need the phone number? (y/n)"
	needs_number = gets.chomp
		if needs_number == "y"
			puts "Here ya go - #{Faker::PhoneNumber.phone_number}"
		else 
			puts "Well okay, schedule it already"
		end 
else 
	puts "try again, with y or n"
end
end

#move the items from the reminders table to the scheduled table
db.execute("INSERT INTO scheduled SELECT * FROM reminders")
#drop all scheduled items from the reminders table
db.execute("DROP TABLE reminders")
puts "Awesome, all clear"

#print the information for the scheduled appointment
scheduled = db.execute("SELECT * FROM scheduled")
scheduled.each do |scheduled|
puts "You've scheduled an appointment with #{scheduled['business_name']} located at #{scheduled['address']}"
end 
