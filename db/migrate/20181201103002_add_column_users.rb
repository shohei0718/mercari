class AddColumnUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :prefecture, foreign_key: true
    add_reference :users, :payment_information, foreign_key: true
  end
end
