class BacklogItem < ApplicationRecord
    has_many :votes, dependent: :destroy
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :description, presence: true
  
    # Calculate average scores for developers and QA analysts
    def average_developer_score
      developer_votes = votes.joins(:user).where(users: { role_id: Role.find_by(name: 'developer').id })
      calculate_average(developer_votes)
    end
  
    def average_qa_score
      qa_votes = votes.joins(:user).where(users: { role_id: Role.find_by(name: 'qa').id })
      calculate_average(qa_votes)
    end
  
    private
  
    def calculate_average(votes)
      return nil if votes.empty?
  
      sums = Hash.new(0)
      votes.each do |vote|
        sums[:ui_points] += vote.ui_points
        sums[:api_points] += vote.api_points
        sums[:processor_points] += vote.processor_points
        sums[:task_scheduler_points] += vote.task_scheduler_points
        sums[:data_points] += vote.data_points
        sums[:research_points] += vote.research_points
        sums[:external_data_points] += vote.external_data_points
        sums[:manual_testing_points] += vote.manual_testing_points
      end
  
      sums.transform_values { |sum| sum / votes.count.to_f }
    end
end
  