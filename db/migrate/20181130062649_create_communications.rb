class CreateCommunications < ActiveRecord::Migration[5.0]
  def change
    create_table :communications do |t|
      t.text       :message

      # t.references :user,                   foreign_key: true
      # t.references :item,                   foreign_key: true
      # t.references :order_status,           foreign_key: true

      t.boolean    :seller_or_buyer

      t.timestamps
    end
  end
end
