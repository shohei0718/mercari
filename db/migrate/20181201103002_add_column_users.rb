class AddColumnUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :prefecture, foreign_key: true
  end
end
