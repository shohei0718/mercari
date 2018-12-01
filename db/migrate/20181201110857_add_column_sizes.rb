class AddColumnSizes < ActiveRecord::Migration[5.0]
  def change

    add_reference :sizes, :size_category,   foreign_key: true

  end
end
