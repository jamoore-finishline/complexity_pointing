# app/controllers/user/dashboard_controller.rb
module User
  class DashboardController < ApplicationController
    before_action :authenticate_user!

    def index
      @backlog_items = BacklogItem.where(released: true)
    end
  end
end
