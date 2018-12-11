class ItemImage < ApplicationRecord
  belongs_to :item, optional: true
  validates :item, presence: true
  validates :image, presence: true
  mount_uploader :image, ItemImageUploader

end
