# require gems
require 'sqlite3'
require 'faker'
# require 'select_weekday'

# creating a SQLite3 database
db = SQLite3::Database.new("workout.db")
db.results_as_hash = true

# creating a database command
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workout(
    id INTEGER PRIMARY KEY,
    day VARCHAR(255),
    body_part VARCHAR(255),
    dumbbell_req BOOLEAN,
    minutes INT
  )
SQL

# create a workout table if one isn't already there
db.execute(create_table_cmd)

# workout test
# db.execute("INSERT INTO workout (day, body_part, dumbbell_req, minutes) VALUES ('Monday', 'legs', 'false', 45)")

# creating a workout schedule for people to follow
def create_workout(db, day, body_part, dumbbell_req, minutes)
  db.execute("INSERT INTO workout (day, body_part, dumbbell_req, minutes) VALUES (?, ?, ?, ?)", [day, body_part, dumbbell_req, minutes])
end

# creating a multiple workouts. Number represents the day of the week, Sun = 1
100.times do
  create_workout(db, Faker::Number.between(1, 7), "arms", "true", 45)
end

# workout = db.execute("SELECT * FROM workout")
# workout.each do |workout|
#  puts "#{workout['day']} you will work on #{workout['body_part']}, for #{workout['minutes']}"
# end