class HomeController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  	@course = @user.course
  	@seasons = @course.seasons
  end
end
