class ModifyPointingSessions < ActiveRecord::Migration[7.0]
  def change
    change_table :pointing_sessions do |t|
      # Remove columns
      t.remove :duration
      t.remove :product_manager_id
      t.remove :scrum_master_id

      # Add new column
      t.string :focus
    end
  end
end
