class CreateRateCounts < ActiveRecord::Migration[5.0]
  def change
    create_table :rate_counts do |t|
      t.text       :message,      null:false

      # t.references :rating, foreign_key: true
      # t.references :user,   foreign_key: true
      # t.references :item,   foreign_key: true

      t.boolean    :seller_or_buyer

      t.timestamps
    end
  end
end
