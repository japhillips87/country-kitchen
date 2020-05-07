module Types
  class CategoryType < Types::BaseObject
    field :name, type: String, null: false
    field :recipes, type: [Types::RecipeType], null: false
  end
end
