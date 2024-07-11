# app/controllers/admin/users_controller.rb
module Admin
  class UsersController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_admin

    def new
      @user = User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to root_path, notice: 'User was successfully created.'
      else
        render :new
      end
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id)
    end

    def ensure_admin
      redirect_to root_path, alert: 'You are not authorized to access this page.' unless current_user.admin?
    end
  end
end
