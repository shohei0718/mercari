class BrandCategory < ApplicationRecord
  belongs_to :first_category
  belongs_to :brand
end
