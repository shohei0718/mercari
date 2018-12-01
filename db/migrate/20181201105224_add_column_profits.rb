class AddColumnProfits < ActiveRecord::Migration[5.0]
  def change

    add_reference :profits, :user,   foreign_key: true
    add_reference :profits, :item,   foreign_key: true

  end
end
