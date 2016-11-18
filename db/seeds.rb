# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"
require "json"

Ingredient.destroy_all

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ing_serialized = open(url).read

ing_array = JSON.parse(ing_serialized)["drinks"]

ing_array.each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end

Cocktail.create(name: "Mojito", picture_url: "mojito.jpg")
Cocktail.create(name: "Screwdriver", picture_url: "screwdriver.jpg")
Cocktail.create(name: "Whiskey Sour", picture_url: "whiskey_sour.jpg")
Cocktail.create(name: "Gin and tonic", picture_url: "gin_and_tonic.jpg")
