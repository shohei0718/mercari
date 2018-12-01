class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string     :name,             null:false
      t.integer    :price,            null:false
      t.text       :description,      null:false

      # t.references :user,             foreign_key: true

      # t.references :first_category,   foreign_key: true
      # t.references :second_category,  foreign_key: true
      # t.references :third_category,   foreign_key: true

      # t.references :brand,            foreign_key: true
      # t.references :size,             foreign_key: true
      # t.references :condition,        foreign_key: true
      # t.references :delivery_charge,  foreign_key: true
      # t.references :prefecture,       foreign_key: true
      # t.references :delivery_date,    foreign_key: true
      # t.references :order_status,     foreign_key: true
      # t.references :delivery_way,     foreign_key: true

      t.timestamps
    end
  end
end
