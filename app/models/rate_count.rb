class RateCount < ApplicationRecord
  belongs_to :item
  belongs_to :user
  belongs_to :rate
end
