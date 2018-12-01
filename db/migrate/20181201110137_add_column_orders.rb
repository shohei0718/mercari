class AddColumnOrders < ActiveRecord::Migration[5.0]
  def change

    add_reference :orders, :user,         foreign_key: true
    add_reference :orders, :item,         foreign_key: true
    add_reference :orders, :prefecture,   foreign_key: true

  end
end
