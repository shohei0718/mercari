class Brand < ApplicationRecord
  has_many :items
  has_many :first_categories,       through: :brand_categories
  has_many :brand_categories
end
