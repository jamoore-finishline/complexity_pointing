class AddPointingSessionIdToBacklogItems < ActiveRecord::Migration[7.0]
  def change
    add_column :backlog_items, :pointing_session_id, :bigint
  end
end
