class CreateBacklogItems < ActiveRecord::Migration[7.0]
  def change
    create_table :backlog_items do |t|
      t.string :title
      t.text :description
      t.string :category
      t.boolean :air_flow
      t.boolean :performance_testing
      t.boolean :audit_logging
      t.boolean :squad_dependencies
      t.boolean :cross_service_coordination
      t.boolean :integration
      t.integer :uncertainty_level
      t.boolean :technical_debt

      t.timestamps
    end
  end
end
