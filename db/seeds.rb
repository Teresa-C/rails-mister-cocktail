require "open-uri"
require "json"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
html_string = open(url).read
data = JSON.parse(html_string)

data["drinks"].each do |drink|
  ingredient = drink["strIngredient1"]
  Ingredient.create(name: ingredient)
end
