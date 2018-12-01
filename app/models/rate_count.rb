class RateCount < ApplicationRecord
  has_many   :items
  has_many   :users
  belongs_to :rate
end
