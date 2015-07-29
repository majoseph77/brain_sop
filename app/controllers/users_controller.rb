class UsersController < ApplicationController
    skip_before_action :authenticate, :except => [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find_by(params[:email])
  end

  private

    def authenticate
    unless logged_in?
      flash.now.alert =
        "You must be logged in to access this section of the site."
      redirect_to login_path
    end
  end
  def user_params
    params.require(:user).permit(
      :firstName,
      :lastName,
      :email,
      :userName,
      :password,
      :password_confirmation,
      :user_id
    )
  end
end
