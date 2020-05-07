module Types
  class QueryType < Types::BaseObject
    field :recipes, [Types::RecipeType], null: false

    def recipes
      Recipe.all
    end
  end
end
