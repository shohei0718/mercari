class AddColumnPoints < ActiveRecord::Migration[5.0]
  def change

    add_reference :points, :user,           foreign_key: true
    add_reference :points, :point_status,   foreign_key: true

  end
end
