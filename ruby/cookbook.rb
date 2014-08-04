class Cookbook
  attr_accessor :title

  def intitialize(title)
  	@title = title
  end
end

class Recipe
  attr_accessor :title
  attr_accessor :steps
  attr_accessor :ingredients

  def initialize(title, ingredients, steps)
  	@title = title
  	@ingredients = ingredients
  	@steps = steps
  end
end