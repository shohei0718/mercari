class CreateProfits < ActiveRecord::Migration[5.0]
  def change
    create_table :profits do |t|
      t.integer    :profit

      t.datetime    :expiration_date

      t.boolean    :profit_is_valid

      # t.references :user, foreign_key: true
      # t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
