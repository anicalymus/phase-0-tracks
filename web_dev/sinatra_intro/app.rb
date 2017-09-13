# require gems
require 'sinatra'
require 'sqlite3'
require 'sinatra/reloader'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# write a GET route that displays an address
get '/contact/:address' do
  address = params[:address]
  "Please contact me at #{address}"
end

# write a GET route that takes a person's name as a query parameter
get '/' do
  name = params[:name]
  if name
  "Good job, #{name}!"
  else
  "Good job!"
  end
end

# A route that uses route parameters to add two numbers and respond with the result
get '/add/:int1/:int2' do
  sum = params[:int1].to_i + params[:int2].to_i
  "#{sum}"
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

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Make a route that allows the user to search the database in some way
get '/students/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?")
  student.to_s
end

# Is Sinatra the only web app library in Ruby? What are some others?
  # -Other web apps in Ruby include: Padrino, Cramp, Ruby on Rails, Rack, Cuba, Merb etc.
# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
  # -Other gems to use for running a database with Sinatra include: Active Record, CouchDB, Data Mapper, Mongo etc.
# What is meant by the term web stack?
  # -Web stack is the collection of software required for Web development. Web stack contains an operating
  # system, a programming language database software and a Web server.