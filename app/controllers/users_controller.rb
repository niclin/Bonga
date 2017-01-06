class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
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
