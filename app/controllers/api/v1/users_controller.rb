class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    binding.pry
    user_json = UserSerializer.new(@user).serialized_json
    render json: user_json
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      topics = ["Personal Development", "Finance","Travel", "Lifestyle", "Career", "Friends & Family", "Giving Back/Legacy", "Hobbies & Passions", "Adventure"]
      topics.each do | topic |
        @user.topics.build(name: topic)
      end
      @user.save
      session[:user_id] = @user.id
      render json: UserSerializer.new(@user), status: :created
    else
      error_resp = {
        error: @user.errors.full_messages.to_sentence
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find_by_id(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end
