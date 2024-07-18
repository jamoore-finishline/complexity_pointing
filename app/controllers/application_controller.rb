# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    
    # Define after_sign_in_path_for method if needed
    def after_sign_in_path_for(resource)
        if resource.role.name == 'Admin'
          admin_dashboard_path
        else
          root_path
        end
      end
  end
  