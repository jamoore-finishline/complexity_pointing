class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :backlog_item

  # Points for various categories
  validates :ui_points, :api_points, :processor_points, :task_scheduler_points, :data_points, :research_points, :external_data_points, :manual_testing_points, presence: true
  
  # Checkboxes for specific flags
  validates :airflow, :performance_testing, :audit_logging, :squad_dependencies, :cross_service_coordination, :integration, :level_of_uncertainty, :technical_debt, inclusion: { in: [true, false] }

  # Points should be within Fibonacci numbers range
  validates :ui_points, :api_points, :processor_points, :task_scheduler_points, :data_points, :research_points, :external_data_points, :manual_testing_points, inclusion: { in: [0, 1, 2, 3, 5, 8, 13, 21, 34, 55] }
end
