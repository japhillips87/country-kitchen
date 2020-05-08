class Recipe < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates_presence_of :description, :directions

  has_many :ingredients, dependent: :destroy
  belongs_to :category

  accepts_nested_attributes_for :ingredients
end
