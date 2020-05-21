class Cocktail < ApplicationRecord
  has_many :dose, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true
end
