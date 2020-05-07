Recipe.destroy_all

# create categories
Category::BASE_CATEGORIES.each do |name|
  Category.find_or_create_by(name: name)
end

all_categories = Category.all.to_a

5.times do
  # create recipes
  recipe = Recipe.new(name: Faker::Food.dish,
                      description: Faker::Food.description,
                      category: all_categories.sample,
                      directions: Faker::Lorem.paragraph(sentence_count: 5))
  8.times do
    # create ingredients
    amount, unit = Faker::Food.measurement.split("\s")
    recipe.ingredients.new(amount: amount, unit: unit,
                           name: Faker::Food.ingredient)
  end

  recipe.save
end
