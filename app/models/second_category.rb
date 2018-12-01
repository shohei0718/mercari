class SecondCategory < ApplicationRecord
  has_many   :items
  has_many   :third_categories
  belongs_to :first_category
  belongs_to :size_category
end
