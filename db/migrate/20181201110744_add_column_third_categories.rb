class AddColumnThirdCategories < ActiveRecord::Migration[5.0]
  def change

    add_reference :third_categories, :second_category,         foreign_key: true
  end
end
