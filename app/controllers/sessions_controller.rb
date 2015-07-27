class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user & user_rep.authenticate(params[:password])
      session[:user_id] = user.user_id
      redirect_to root_path, notice: "Logged In!"
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
