module Types
  class IngredientType < Types::BaseObject
    field :id, type: ID, null: false
    field :amount, type: String, null: false
    field :unit, type: String, null: true
    field :name, type: String, null: false
    field :full, type: String, null: false

    def full
      [object.amount, object.unit, object.name].compact
        .reject(&:empty?).join(' ')
    end
  end
end
