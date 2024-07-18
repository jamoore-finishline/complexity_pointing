# app/controllers/admin/backlog_items_controller.rb
module Admin
  class BacklogItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def create
      @backlog_item = BacklogItem.new(backlog_item_params)
      @pointing_sessions = PointingSession.all
      if @backlog_item.save
        redirect_to admin_dashboard_path, notice: 'Backlog item was successfully created.'
      else
        @users = User.all
        @pointing_sessions = PointingSession.all
        render 'admin/dashboard/index' # Or another appropriate template
      end
      binding.pry
    end

    private

    def backlog_item_params
      params.require(:backlog_item).permit(:title, :description, :category, :pointing_session_id)
    end

    def ensure_admin
      unless current_user.role.name == 'Admin'
        redirect_to root_path, alert: 'You are not authorized to access this page.'
      end
    end
  end
end
