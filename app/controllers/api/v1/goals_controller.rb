class Api::V1::GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @goals = current_user.goals
    render json: GoalSerializer.new(@goals)
  else 
    render json: {
      error: "Must be logged in to see topics"
    }
  end
  end

  def show
    render json: @goal
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      render json: GoalSerializer.new(@goal), status: :created
    else
      error_resp = {
        error: @goal.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    if @goal.update(goal_params)
      render json: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @goal.destroy
      render json: { data: "Goal successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Goal not found, so could not be destoyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find_by_id(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:goal_name, :goal_description, :goal_timeline, :topic_id)
    end
end
