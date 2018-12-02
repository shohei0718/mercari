class AddColumnItems < ActiveRecord::Migration[5.0]
  def change

    add_reference :items, :user,            foreign_key: true
    add_reference :items, :first_category,  foreign_key: true
    add_reference :items, :second_category, foreign_key: true
    add_reference :items, :third_category,  foreign_key: true
    add_reference :items, :brand,           foreign_key: true
    add_reference :items, :size,            foreign_key: true
    add_reference :items, :condition,       foreign_key: true
    add_reference :items, :delivery_charge, foreign_key: true

    add_reference :items, :prefecture,      foreign_key: true
    add_reference :items, :delivery_date,   foreign_key: true
    add_reference :items, :order_status,    foreign_key: true
    add_reference :items, :delivery_way,    foreign_key: true

  end
end
