module Types
  class RecipeType < Types::BaseObject
    field :id, type: ID, null: false
    field :title, type: String, null: false
    field :description, type: String, null: false
    field :directions, type: String, null: false
    field :ingredients, type: [Types::IngredientType], null: false
  end
end
