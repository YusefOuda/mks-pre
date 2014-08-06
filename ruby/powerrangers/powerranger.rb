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
  def initialize(name, caffeine_level=10, strength=3, color='blue')
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

  def rest
    @strength += 2
    @caffeine_level -= 2
    puts "The #{@color} power ranger takes a lengthy nap. Strength increased to #{@strength} and caffeine level decreased to #{@caffeine_level}."
  end

  def use_megazord(person)
    puts "#{@name} used megazord! #{person.name} was knocked out of commission."
  end
end

class EvilNinja < Person
  def initialize(name, caffeine_level=10, strength=3, evilness=10)
    super(name, caffeine_level)
    @strength = strength
    @evilness = evilness
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
    @evilness += 10
  end

  def cause_mayhem(person)
    puts "#{@name} caused mayhem! Drained #{person.name}'s caffeine_level down to 0"
    person.caffeine_level = 0
  end
end

def fight_scene(p1, p2, pr1, pr2, en1, en2)
  p1.run
  p2.scream
  p1.drink_coffee
  pr1.punch(p1)
  pr2.rest
  pr2.use_megazord(pr1)
  en1.punch(en2)
  en2.cause_mayhem(p2)
end
