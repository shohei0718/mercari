class AddColumnBrandCategories < ActiveRecord::Migration[5.0]
  def change

    add_reference :brand_categories, :brand,   foreign_key: true
    add_reference :brand_categories, :first_category,   foreign_key: true

  end
end
