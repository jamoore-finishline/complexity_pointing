class RemoveBooleansFromBacklogItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :backlog_items, :air_flow, :boolean
    remove_column :backlog_items, :performance_testing, :boolean
    remove_column :backlog_items, :audit_logging, :boolean
    remove_column :backlog_items, :squad_dependencies, :boolean
    remove_column :backlog_items, :cross_service_coordination, :boolean
    remove_column :backlog_items, :integration, :boolean
    remove_column :backlog_items, :technical_debt, :boolean
    remove_column :backlog_items, :uncertainty_level, :integer
  end
end
