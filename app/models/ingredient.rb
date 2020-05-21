class Ingredient < ApplicationRecord
  has_many :dose
  validates :name, presence: true, uniqueness: true
end
