class UsersController < ApplicationController
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
    @user = User.find_by(params[:userName])
  end

private

  def user_params
    params.require(:user).permit(
      :firstName,
      :lastName,
      :email,
      :userName,
      :password,
      :password_confirmation
    )
  end
end
