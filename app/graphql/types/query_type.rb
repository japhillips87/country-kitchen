module Types
  class QueryType < Types::BaseObject
    field :recipes, [Types::RecipeType], null: false
    field :recipe, Types::RecipeType, null: false do
      argument :name, String, required: true
    end

    field :categories, [Types::CategoryType], null: false

    def recipes
      Recipe.all
    end

    def recipe(name:)
      Recipe.find_by(name: name)
    end

    def categories
      Category.all
    end
  end
end
