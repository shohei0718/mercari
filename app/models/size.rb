class Size < ApplicationRecord
  belongs_to :size_category
  has_many   :items
end
