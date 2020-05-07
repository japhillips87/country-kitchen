module Types
  class IngredientType < Types::BaseObject
    field :id, type: ID, null: false
    field :amount, type: String, null: false
    field :unit, type: String, null: false
    field :name, type: String, null: false
  end
end
