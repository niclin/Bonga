class UsersController < BaseController
  before_action :admin_required

  def create
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name, :email, :role,
      :password, :password_confirmation,
      :join_date
    )
  end
end
