class UsersController < ApplicationController
    skip_before_action :authenticate, :except => [:new, :create, :update]


  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_path(@user)
    else
      render "new"
    end
  end

  def edit
    @user = User.last
    @user = User.find_by(params[:learningStyle])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to courses_path
  end

  def show
     @user = User.find_by(params[:email])
  end

  def add_course
    course = Course.find(params[:id])
    puts current_user
    current_user.courses << course
    redirect_to '/courses/show'
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
    params.require(:user).permit(:id,:firstName,:lastName,:email,:learningStyle,:userName,:password,:password_confirmation,:user_id
    )
 end
end
