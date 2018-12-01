class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.integer :amount

      # t.references :user,         foreign_key: true
      # t.references :point_status, foreign_key: true
      t.timestamps
    end
  end
end
