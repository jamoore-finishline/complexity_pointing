class AddAttributesToVotes < ActiveRecord::Migration[7.0]
  def change
    add_column :votes, :ui_points, :integer
    add_column :votes, :api_points, :integer
    add_column :votes, :processor_points, :integer
    add_column :votes, :task_scheduler_points, :integer
    add_column :votes, :data_points, :integer
    add_column :votes, :research_points, :integer
    add_column :votes, :external_data_points, :integer
    add_column :votes, :manual_testing_points, :integer
    add_column :votes, :airflow, :boolean
    add_column :votes, :performance_testing, :boolean
    add_column :votes, :audit_logging, :boolean
    add_column :votes, :squad_dependencies, :boolean
    add_column :votes, :cross_service_coordination, :boolean
    add_column :votes, :integration, :boolean
    add_column :votes, :level_of_uncertainty, :boolean
    add_column :votes, :technical_debt, :boolean
  end
end
