class Ingredient < ApplicationRecord
  validates_presence_of :amount, :unit, :name
  belongs_to :recipe
end
