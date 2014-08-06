class Person
  def initialize(name, caffeine_level=0)
	  @name = name
	  @caffeine_level = caffeine_level
  end

  def run(distance)
  	puts "#{@name} ran #{distance} miles!"
  	@caffeine_level -= distance / 2.0
  	puts "#{@name}'s caffeine level decreased to #{@caffeine_level}."
  end

  def scream
  	puts "AHHHHHHHHHHH!!!!!!"
  	@caffeine_level += 1
  	puts "#{@name}'s caffeine_level slightly increased"
  end

  def drink_coffee
  	puts "#{@name} drinks a large cup of super-charged coffee."
  	@caffeine_level += 10
  end

end

class PowerRanger < Person
  def initialize(name, caffeine_level=0, strength, color)
  	super(name, caffeine_level)
  	@strength = strength
  	@color = color
  end

  def punch(person)
end

class EvilNinja
end
