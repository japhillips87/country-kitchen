class Mutations::CreateRecipe < Mutations::BaseMutation
  argument :attributes, Types::RecipeAttributes, required: true

  field :recipe, Types::RecipeType, null: true
  field :errors, [String], null: false

  def resolve(attributes:)
    recipe = Recipe.new(attributes.to_h)
    if recipe.save
      { recipe: recipe, errors: [] }
    else
      { recipe: nil, errors: recipe.errors.full_messages }
    end
  end
end
