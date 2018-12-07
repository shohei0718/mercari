class ItemImage < ApplicationRecord
  belongs_to :item, optional: true, inverse_of: :item
  validates :image, presence: true
  mount_uploader :image, ItemImageUploader
end
