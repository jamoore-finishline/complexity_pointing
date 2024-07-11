module Admin
    class PointingSessionsController < ApplicationController
      before_action :authenticate_user!
      before_action :admin_only
  
      def new
        @pointing_session = PointingSession.new
      end
  
      def create
        @pointing_session = PointingSession.new(pointing_session_params)
        if @pointing_session.save
          redirect_to @pointing_session, notice: 'Pointing session was successfully created.'
        else
          render :new
        end
      end
  
      private
  
      def pointing_session_params
        params.require(:pointing_session).permit(:session_date)
      end
  
      def admin_only
        unless current_user.admin?
          redirect_to root_path, alert: 'You are not authorized to access this page.'
        end
      end
    end
end
  