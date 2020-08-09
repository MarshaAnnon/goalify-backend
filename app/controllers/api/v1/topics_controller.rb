class Api::V1::TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @topics = current_user.topics
      render json: TopicSerializer.new(@topics)
    else 
      render json: {
        error: "Must be logged in to see topics"
      }
    end
  end

  def create
    @topic = current_user.topics.build(topic_params)

    if @topic.save
      render json: TopicSerializer.new(@topic), status: :created
    else
      error_resp = {
        error: @topic.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    if @topic.update(topic_params)
      render json: TopicSerializer.new(@topic), status: :ok
    else
      error_resp = {
        error: @topic.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def destroy
    if @topic.destroy
      render json: { data: "Topic successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Topic not found, so could not be destoyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    def set_topic
      @topic = Topic.find_by_id(params[:id])
    end

    def topic_params
      params.require(:topic).permit(:name, :user_id)
    end

end
