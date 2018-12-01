class CreatePointStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :point_statuses do |t|
      t.string      :point_status
      t.timestamps
    end
  end
end
