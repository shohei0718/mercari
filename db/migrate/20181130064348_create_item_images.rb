class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
      t.text       :image, null:false

      # t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
