class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(params[:userName])

    if @user && @user.authenticate(params[:password])
      session[:userName]
      redirect_to users_profile_path, notice: "Logged In!"
    else
      flash.now.alert = "Invalid login credentials."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged Out!"
  end
end
