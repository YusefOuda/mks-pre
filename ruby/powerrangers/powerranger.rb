class Person
  attr_accessor :caffeine_level

  def initialize(name, caffeine_level=10)
	  @name = name
	  @caffeine_level = caffeine_level
  end

  def run
  	puts "#{@name} ran!"
  	@caffeine_level -= 3
  	puts "#{@name}'s caffeine level decreased to #{@caffeine_level}."
  end

  def scream
  	puts "AHHHHHHHHHHH!!!!!!"
  	@caffeine_level += 1
  	puts "#{@name}'s caffeine_level slightly increased"
  end

  def drink_coffee
  	puts "#{@name} drinks a large cup of super-charged coffee."
  	@caffeine_level += 5
  end

end

class PowerRanger < Person
  def initialize(name, caffeine_level=10, strength, color)
  	super(name, caffeine_level)
  	@strength = strength
  	@color = color
  end

  def punch(person)
    if @strength < 5
      person.scream
      person.run
    else
      puts "#{person.name} was someraulted into the air!"
      person.caffeine_level -= 5
      puts "#{person.name}'s caffeine level was decreased to {person.caffeine_level}"
    end
    @caffeine_level -= 5
end

class EvilNinja
end
