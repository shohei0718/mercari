class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many   :rate_counts
  belongs_to :prefecture
end
