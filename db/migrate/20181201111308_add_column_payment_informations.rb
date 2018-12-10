class AddColumnPaymentInformations < ActiveRecord::Migration[5.0]
  def change

    add_reference :payment_informations, :user,   foreign_key: true, unique: true
  end
end
