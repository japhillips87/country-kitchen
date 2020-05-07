class Recipe < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates_presence_of :description, :directions

  has_many :ingredients
end
