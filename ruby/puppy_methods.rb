class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof!" * integer
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(integer)
    puts integer * 7
  end

  def jump
    puts "*jump*"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end
end

#DRIVER CODE
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(4)
puppy.jump


class Bird
  def initialize
    puts "Initializing new bird instance ..."
  end

  def chirps(integer)
    puts "chirp!" * integer
  end

  def fly
    puts "Birds fly high!"
  end

end

bird = Bird.new
bird.chirps(5)
bird.fly

birds = []
counter = 0
while counter < 50
  new_bird = Bird.new
  birds << new_bird
  counter += 1
end
birds.each do |bird|
  bird.chirps(2)
  bird.fly
end

