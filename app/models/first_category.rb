class FirstCategory < ApplicationRecord
  has_many :items
  has_many :brand_categories
  has_many :second_categories
  has_many :brands,through: :brand_categories
end
