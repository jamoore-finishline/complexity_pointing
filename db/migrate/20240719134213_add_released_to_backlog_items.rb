class AddReleasedToBacklogItems < ActiveRecord::Migration[7.0]
  def change
    add_column :backlog_items, :released, :boolean
  end
end
