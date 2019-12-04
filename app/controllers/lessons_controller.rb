class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show 
  	@lesson = Lesson.find(params[:id])
  end
  
  def new
  	@lesson = Lesson.new(user: current_user)
  	@topics = Topic.all
  end 

end
