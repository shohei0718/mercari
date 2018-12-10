class ItemImage < ApplicationRecord
  belongs_to :item, optional: true

  mount_uploader :image, ItemImageUploader

  validates :image, presence: true

end
