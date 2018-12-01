class AddColumnBrands < ActiveRecord::Migration[5.0]
  def change

    add_reference :brands, :first_category,   foreign_key: true
  end
end
