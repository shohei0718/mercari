class ThirdCategory < ApplicationRecord
  has_many   :items
  belongs_to :second_category
end
