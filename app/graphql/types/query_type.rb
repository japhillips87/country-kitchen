module Types
  class QueryType < Types::BaseObject
    field :recipes, [Types::RecipeType], null: false
    field :categories, [Types::CategoryType], null: false

    def recipes
      Recipe.all
    end

    def categories
      Category.all
    end
  end
end
