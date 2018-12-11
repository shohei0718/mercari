class ItemImage < ApplicationRecord
  belongs_to :item
  validates :item, presence: true
  mount_uploader :image, ItemImageUploader
end
