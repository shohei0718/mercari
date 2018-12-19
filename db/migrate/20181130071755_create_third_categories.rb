class CreateThirdCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :third_categories do |t|
      t.string     :third_category

      # t.references :second_category,     foreign_key: true

      t.timestamps
    end
  end
end
