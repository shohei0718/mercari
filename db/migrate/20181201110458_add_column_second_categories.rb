class AddColumnSecondCategories < ActiveRecord::Migration[5.0]
  def change

    add_reference :second_categories, :first_category,         foreign_key: true
    add_reference :second_categories, :size_category,          foreign_key: true

  end
end
