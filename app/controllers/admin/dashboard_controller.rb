# app/controllers/admin/dashboard_controller.rb
module Admin
  class DashboardController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def index
      @users = User.all
      @pointing_sessions = PointingSession.all
      @pointing_session = PointingSession.new
      @backlog_item = BacklogItem.new
      @backlog_items = BacklogItem.all
    
      Rails.logger.debug "Reached the point where binding.pry should be activated"
    
      binding.pry  # Add breakpoint here
    end
    

    private

    def ensure_admin
      unless current_user.role.name == 'Admin'
        redirect_to root_path, alert: 'You are not authorized to access this page.'
      end
    end
  end
end
