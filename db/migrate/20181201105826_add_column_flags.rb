class AddColumnFlags < ActiveRecord::Migration[5.0]
  def change
    add_reference :flags, :user,   foreign_key: true
    add_reference :flags, :item,   foreign_key: true

  end
end
