class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :email, :role,
      :password, :password_confirmation,
      :join_date, :leave_date
    )
  end
end
