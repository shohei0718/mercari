class CreateBrandCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :brand_categories do |t|
      # t.references :brand,              foreign_key: true
      # t.references :first_category,     foreign_key: true

      t.timestamps
    end
  end
end
