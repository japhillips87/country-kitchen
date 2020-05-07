module Types
  class RecipeType < Types::BaseObject
    field :id, type: ID, null: false
    field :name, type: String, null: false
    field :description, type: String, null: false
    field :directions, type: String, null: false
    field :ingredients, type: [Types::IngredientType], null: false
    field :category, type: String, null: false

    def category
      object.category.name
    end
  end
end
