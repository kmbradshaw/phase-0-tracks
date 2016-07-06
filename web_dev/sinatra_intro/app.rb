# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# add a contact route that displays an address 
get '/contact' do 
  address = ""
  address << "303 W. Maple Avenue <br>"
  address << "Champaign, IL 61820"
  address
end 

# add a great_job route that takes a persons name as a query parameter
# IF present returns Good Job #{name}
# ELSE returns Good Job
get '/great_job' do 
  name = params[:name]
  if name
    "Good Job #{:name}!"
  else
    "Good Job!"
  end
end  

# add  a route that uses route paramters to add to numbers together
get '/:number1/add/:number2' do 
  sum = (params[:number1]).to_i + (params[:number2]).to_i
  sum.to_s
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end