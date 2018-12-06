class ChangeColumnToUser < ActiveRecord::Migration[5.0]
  def change
    # remove_foreign_key :users, :payment_information
    remove_reference :users, :payment_information, index: true
  end
end
