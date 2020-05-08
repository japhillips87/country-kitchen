class Types::IngredientsAttributes < Types::BaseInputObject
  argument :name, String, required: true
  argument :amount, String, required: true
  argument :unit, String, required: false
end
