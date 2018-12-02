class AddColumnItemImages < ActiveRecord::Migration[5.0]
  def change

    add_reference :item_images, :item,   foreign_key: true

  end
end
