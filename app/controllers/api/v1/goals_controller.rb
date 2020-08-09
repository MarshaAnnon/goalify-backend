class Api::V1::GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

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

    def set_goal
      @goal = Goal.find_by_id(params[:id])
    end

    def goal_params
      params.require(:goal).permit(:goal_name, :goal_description, :goal_timeline, :topic_id)
    end
end
