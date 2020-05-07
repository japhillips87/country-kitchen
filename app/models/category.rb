class Category < ApplicationRecord
  BASE_CATEGORIES = [
    'Apetizers',
    'Entrees',
    'Sides',
    'Deserts'
  ]

  validates :name, presence: true, uniqueness: true
  has_many :recipes
end
