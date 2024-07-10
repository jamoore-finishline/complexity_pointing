class PointingSession < ApplicationRecord
    has_many :backlog_items, dependent: :destroy
    has_many :votes, through: :backlog_items
  
    validates :date, presence: true
end
  