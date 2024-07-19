class UpdateVotesTable < ActiveRecord::Migration[6.1]
  def change
    # Change integer columns to float
    change_column :votes, :value, :float
    change_column :votes, :ui_points, :float
    change_column :votes, :api_points, :float
    change_column :votes, :processor_points, :float
    change_column :votes, :task_scheduler_points, :float
    change_column :votes, :data_points, :float
    change_column :votes, :research_points, :float
    change_column :votes, :external_data_points, :float
    change_column :votes, :manual_testing_points, :float
  end
end
