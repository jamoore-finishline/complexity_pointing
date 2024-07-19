# app/controllers/backlog_items_controller.rb
class BacklogItemsController < ApplicationController
  before_action :set_backlog_item, only: [:show, :vote]

  def show
    @vote = Vote.new # To initialize a new vote form
  end

  def vote
    # Handle the voting logic here
    @vote = @backlog_item.votes.new(vote_params.merge(user: current_user))
    if @vote.save
      redirect_to @backlog_item, notice: 'Vote was successfully submitted.'
    else
      render :show
    end
  end

  private

  def set_backlog_item
    @backlog_item = BacklogItem.find(params[:id])
  end

  def vote_params
    params.require(:vote).permit(:value, :airflow, :performance_testing, :audit_logging, :squad_dependencies, :cross_service_coordination, :integration, :level_of_uncertainty, :technical_debt)
  end
end
