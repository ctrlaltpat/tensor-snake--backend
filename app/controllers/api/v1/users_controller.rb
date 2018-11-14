class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    # byebug
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: 200
    else
      render json: @user.errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :avatar)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
