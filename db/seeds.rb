5.times do
  recipe = Recipe.new(title: Faker::Food.dish,
                      description: Faker::Food.description,
                      directions: Faker::Lorem.paragraph(sentence_count: 5))
  8.times do
    amount, unit = Faker::Food.measurement.split("\s")
    recipe.ingredients.new(amount: amount, unit: unit,
                           name: Faker::Food.ingredient)
  end

  recipe.save
end
