module Admin
  class VotesController < ApplicationController
    before_action :set_vote, only: [:show, :edit, :update, :destroy]
  
    # GET /votes
    def index
      @votes = Vote.all
    end
  
    # GET /votes/1
    def show
    end
  
    # GET /votes/new
    def new
      @vote = Vote.new
    end
  
    # GET /votes/1/edit
    def edit
    end
  
    # POST /votes
    def create
      @vote = Vote.new(vote_params)
  
      if @vote.save
        redirect_to @vote, notice: 'Vote was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /votes/1
    def update
      if @vote.update(vote_params)
        redirect_to @vote, notice: 'Vote was successfully updated.'
      else
        render :edit
      end
    end
  
    # DELETE /votes/1
    def destroy
      @vote.destroy
      redirect_to votes_url, notice: 'Vote was successfully destroyed.'
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_vote
        @vote = Vote.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def vote_params
        params.require(:vote).permit(:ui_points, :api_points, :processor_points, :task_scheduler_points, :data_points, :research_points, :external_data_points, :manual_testing_points, :airflow, :performance_testing, :audit_logging, :squad_dependencies, :cross_service_coordination, :integration, :level_of_uncertainty, :technical_debt, :user_id, :backlog_item_id)
      end
  end
  
end
