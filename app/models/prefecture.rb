class Prefecture < ApplicationRecord
  has_many :items
  has_many :users
  has_many :orders
end
