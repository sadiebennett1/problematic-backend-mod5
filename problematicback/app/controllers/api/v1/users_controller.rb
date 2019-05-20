class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user)}, status: :created
    else
      render json: {error: 'Failed to create user.'}, status: :not_acceptable
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user)}, status: :accepted
  end

  def index
    @users = User.all
    render json: @users
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
