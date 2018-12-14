class Item < ApplicationRecord
  has_many   :item_images, inverse_of: :item, dependent: :destroy
  accepts_nested_attributes_for :item_images
  has_many   :communications
  has_many   :likes
  has_many   :flags
  has_many   :rate_counts
  has_many   :message_users,  through: :communications,   source: :user
  has_many   :like_users,     through: :likes,            source: :user
  has_many   :flag_users,     through: :flags,            source: :user
  has_many   :rating_users,   through: :rate_counts,            source: :user

  validates :name, :price, :description, presence: true
  validates :item_images, presence: true, length:{minimum: 1}
  validates :item_images, presence: true, length:{maximum: 4}
  validates_numericality_of :price,
                            greater_than_or_equal_to: 300,
                            less__than_or_equal_to: 9999999,
                            message: "価格は300円から9,999,999円で設定してください"
  has_one :order
  has_one :profit


  belongs_to :prefecture
  belongs_to :user

  belongs_to :first_category
  belongs_to :second_category
  belongs_to :third_category, optional: true

  belongs_to :brand, optional: true
  belongs_to :condition
  belongs_to :delivery_charge
  belongs_to :delivery_date
  belongs_to :delivery_way
  belongs_to :order_status
  belongs_to :size, optional: true
end
