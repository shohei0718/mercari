class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string     :first_name_delivery,         null:false
      t.string     :first_name_kana_delivery,    null:false
      t.string     :last_name_delivery,          null:false
      t.string     :last_name_kana_delivery,     null:false

      t.string     :city_delivery,               null:false
      t.string     :adress_delivery,             null:false
      t.string     :building_delivery

      t.integer    :zip_code_delivery,           null:false
      t.integer    :telephone_delivery
      t.integer    :payment_method,              null:false
      t.integer    :point

      # t.references :user,                        foreign_key: true
      # t.references :item,                        foreign_key: true
      # t.references :prefecture,                  foreign_key: true

      t.boolean    :user_point

      t.timestamps
    end
  end
end
