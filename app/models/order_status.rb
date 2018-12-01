class OrderStatus < ApplicationRecord
  has_many :items
  has_many :communications
end
