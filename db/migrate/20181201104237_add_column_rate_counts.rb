class AddColumnRateCounts < ActiveRecord::Migration[5.0]
  def change

    add_reference :rate_counts, :rate, foreign_key: true
    add_reference :rate_counts, :user,   foreign_key: true
    add_reference :rate_counts, :item,   foreign_key: true

  end
end
