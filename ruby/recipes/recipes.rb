class Recipe
  attr_reader :name, :servings, :ingredients
 
  def initialize(name, servings)
    @name = name
    @servings = servings
    @ingredients = []
  end
 
  def add_ingredient(i)
    @ingredients << i
  end
 
end
 
class Ingredient
  attr_reader :name, :quantity, :units
 
  def initialize(name, quantity=:to_taste, units=nil)
    @name = name
    @quantity = quantity
    @units = units
  end
end

# hold a list of all of the different units for measurement
units = ['oz', 'tbs', 'lbs', 'cup']
raw = File.read('recipes.txt')
# first split it into 3 elements, 1 for each recipe
step1 = raw.split("\n\n")
step2 = step1.map { |x| x.split("\n") }
# this loop runs 3 times, 1 for each recipe
step2.map do |rec|
  # create a recipe with the given name and serving size
  recipe = Recipe.new(rec.first, rec[1].split.last.to_i)
  ingredients = rec[2..-1]
  # this loop runs the same number of times as there are ingredients in a recipe
  ingredients.each do |ing|
    if ing.to_i == 0
      # no quantity, so no units
      ingredient = Ingredient.new(ing)
    else
      # quantity is present
      split_ing = ing.split
      quantity = split_ing[0].to_i
      # check if second word is a unit
      if (split_ing & units).empty?
        # in this case it is not a unit
        name = split_ing[1..-1].join(' ')
        ingredient = Ingredient.new(name, quantity)
      else
        # in this case, there is a unit present
        unit = split_ing[1]
        name = split_ing[2..-1].join(' ')
        ingredient = Ingredient.new(name, quantity, unit)
      end
    end
    # add ingredient to recipe
    recipe.add_ingredient(ingredient)
  # end inner loop
  end
  # test code
  puts "Recipe name: #{recipe.name}"
  puts "Recipe servings: #{recipe.servings}"
  print "Recipe ingredients: #{recipe.ingredients}"
  puts ""
# end outer loop
end
