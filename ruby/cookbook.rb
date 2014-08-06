class Cookbook
  attr_accessor :title

  def initialize(title)
  	@title = title
  	@recipes = []
  end

  def add_recipe(recipe)
  	@recipes << recipe
  	puts "Added a recipe to the collection: #{recipe.title}"
  end

  def recipe_titles
  	@recipes.each do |recipe|
  	  puts recipe.title
  	end
  end

  def recipe_ingredients
    @recipes.each do |recipe|
  	  puts "These are the ingredients for #{recipe.title}: #{recipe.ingredients}"
    end
  end

  def print_cookbook
  	@recipes.each do |recipe|
  	  puts "Title: #{recipe.title}. Ingredients: #{recipe.ingredients.join(', ')}. Steps: #{recipe.steps.each_with_index { |step, index| (index + 1).to_s << ": " << step}}"
  	end
  end

  def delete_recipe(recipe)
    @recipes.delete(recipe)
  end

  def recipes
  	@recipes
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

  def print_recipe
  	puts "Title: #{@title}. Ingredients: #{@ingredients.join(', ')}. Steps: #{@steps}"
  end
end