class UsersController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @users = User.order(id: :asc)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.create!(user_params)
    redirect_to user
  end

  def edit
  end

  def update
    @user.update!(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy!
    redirect_to @user
  end

  private

  def set_post
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :age)
  end
end
