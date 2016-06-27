

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("reminders.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS reminders(
    id INTEGER PRIMARY KEY,
    business_name VARCHAR(255),
    address VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

def needed_appointments(db, business_name, address)
  db.execute("INSERT INTO reminders (business_name, address) VALUES (?, ?)", [business_name, address])
end

1.times do
  needed_appointments(db, Faker::Company.name, Faker::Address.street_address)
end

#User Interface
puts "You have appointments to schedule this week"

appointments = db.execute("SELECT * FROM reminders")
appointments.each do |appointments|
puts "You need to schedule an appointment with #{appointments['business_name']} located at #{appointments['address']}"
end 

loop do 
puts "Have you scheduled your appointments? (y/n)"
scheduled = gets.chomp
if scheduled == "y"
	puts "Awesome, all clear!"
	db.execute("DROP TABLE reminders")
	break
elsif scheduled == "n"
	puts "The phone number is 217.555.3494, just do it already"
else 
	puts "try again, with y or n"
end
end


