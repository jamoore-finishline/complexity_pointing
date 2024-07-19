class PointingSession < ApplicationRecord
    has_many :backlog_items, inverse_of: :pointing_session
    has_many :votes, through: :backlog_items
  
    validates :date, presence: true
    validates :focus, inclusion: { in: %w[Front\ End Back\ End Both] }
  
    accepts_nested_attributes_for :backlog_items, reject_if: :all_blank, allow_destroy: true
end
  