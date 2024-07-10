# app/models/comment.rb
class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :backlog_item
  
    validates :content, presence: true
end
  