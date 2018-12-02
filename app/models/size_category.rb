class SizeCategory < ApplicationRecord
  has_many :second_categories
  has_many :sizes
end
