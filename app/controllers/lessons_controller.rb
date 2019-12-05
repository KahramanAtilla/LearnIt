class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show 
  	@lesson = Lesson.find(params[:id])
  end
  
  def new
    @lesson = Lesson.new(user: @user, title: params[:title], content: params[:content], topic: params[:topic])
  	@topics = Topic.all
  end 


   def create
    @user = current_user
    @lesson = Lesson.new(user: @user, title: params[:title], content: params[:content], topic: params[:topic])

    if @lesson.save
      redirect_to lessons_path
    else
      render 'lesson/new'
    end


  end



end
