class CreatePaymentInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_informations do |t|
      t.integer     :card_number,             null:false, unique:true
      t.integer     :valid_year,              null:false
      t.integer     :valid_month,             null:false
      t.integer     :cvc,                     null:false

      # t.references  :user,                   null:false, foreign_key: true

      t.timestamps
    end
  end
end
