class VotesController < ApplicationController
    before_action :authenticate_user!
    after_action :verify_authorized
  
    def index
      @votes = Vote.all
      authorize @votes
    end
  
    def show
      @vote = Vote.find(params[:id])
      authorize @vote
    end
  
    def create
      @vote = current_user.votes.build(vote_params)
      authorize @vote
  
      if @vote.save
        redirect_to @vote, notice: 'Vote was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def vote_params
      params.require(:vote).permit(:ui_points, :api_points, :processor_points, :task_scheduler_points, :data_points, :research_points, :external_data_points, :manual_testing_points, :airflow, :performance_testing, :audit_logging, :squad_dependencies, :cross_service_coordination, :integration, :level_of_uncertainty, :technical_debt)
    end
  end
  