class Ingredient < ApplicationRecord
  validates_presence_of :amount, :name
  belongs_to :recipe
end
