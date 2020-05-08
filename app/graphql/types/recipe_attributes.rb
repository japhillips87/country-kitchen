class Types::RecipeAttributes < Types::BaseInputObject
  argument :name, String, required: true
  argument :description, String, required: true
  argument :directions, String, required: true
  argument :category_id, ID, required: true
  argument :ingredients_attributes, [Types::IngredientsAttributes], required: true
end
