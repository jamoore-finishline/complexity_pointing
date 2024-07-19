module Admin
  class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      
      # Debugging with binding.pry
      binding.pry
      
      if @user.save
        redirect_to admin_dashboard_path, notice: 'User was successfully created.'
      else
        flash.now[:alert] = 'Failed to create user.'
        # Capture errors and log them for debugging
        Rails.logger.error "Failed to save user: #{@user.errors}"
        # Optionally, you can assign errors to a variable to display in the view
        @error_messages = @user.errors.full_messages
        render :new
      end
    end
    
    
    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id)
    end

    def ensure_admin
      redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user.role.name == 'Admin'
    end
  end
end
