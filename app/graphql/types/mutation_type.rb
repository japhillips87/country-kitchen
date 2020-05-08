module Types
  class MutationType < Types::BaseObject
    field :create_recipe, mutation: Mutations::CreateRecipe
  end
end
