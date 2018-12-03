class AddColumnCommunications < ActiveRecord::Migration[5.0]
  def change

    add_reference :communications, :user,            foreign_key: true
    add_reference :communications, :item,            foreign_key: true
    add_reference :communications, :order_status,    foreign_key: true

  end
end
