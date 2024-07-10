class CreatePointingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :pointing_sessions do |t|
      t.date :date
      t.integer :duration
      t.integer :product_manager_id
      t.integer :scrum_master_id

      t.timestamps
    end
  end
end
