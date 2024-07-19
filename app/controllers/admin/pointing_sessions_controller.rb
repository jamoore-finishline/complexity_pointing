module Admin
  class PointingSessionsController < ApplicationController
    before_action :authenticate_user!
    before_action :admin_only

    def new
      @pointing_session = PointingSession.new
      @pointing_session.backlog_items.build # Build an empty backlog item for the form
      @pointing_sessions = PointingSession.all
    end

    def create
      @pointing_session = PointingSession.new(pointing_session_params)
      
      if @pointing_session.save
        redirect_to admin_dashboard_path, notice: 'Pointing session was successfully created.'
      else
        flash.now[:alert] = 'Failed to create pointing session.'
        @pointing_sessions = PointingSession.all
        render :new
      end
    end

    private

    def pointing_session_params
      params.require(:pointing_session).permit(
        :date, :focus,
        backlog_items_attributes: [
          :id, :name, :description, :story_points, :_destroy, 
          votes_attributes: [:id, :value, :_destroy],
          comments_attributes: [:id, :content, :_destroy]
        ]
      )
    end

    def admin_only
      redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user&.admin?
    end
  end
end
