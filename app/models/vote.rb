class Vote < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :backlog_item

  # Validations
  VALID_POINTS = [0.5, 1, 2, 3, 5, 8, 13].freeze

  validates :ui_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :api_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :processor_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :task_scheduler_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :data_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :research_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :external_data_points, inclusion: { in: VALID_POINTS + [nil] }
  validates :manual_testing_points, inclusion: { in: VALID_POINTS + [nil] }
end
