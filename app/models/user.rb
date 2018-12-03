class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many   :items
  has_many   :orders
  has_many   :profits
  has_many   :points
  has_many   :communications
  has_many   :likes
  has_many   :flags
  has_many   :message_items,    through: :communications, source: :item
  has_many   :like_items,       through: :likes,          source: :item
  has_many   :flag_items,       through: :flags,          source: :item

  # belongs_to :payment_information
  belongs_to :prefecture

end
