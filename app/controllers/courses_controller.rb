class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @courses = Course.find_by(params[:title])
  end
end
