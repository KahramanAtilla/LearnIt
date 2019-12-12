class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.last(10)
  end

  def show
  	@lesson = Lesson.find(params[:id])
    $less = Lesson.find(params[:id])
  end

  def new
    @lesson = Lesson.new
  	@topics = Topic.all
  end


   def create
    @user = current_user
    @topics = Topic.all
    @lesson = Lesson.new(user: @user, title: params[:title], content: params[:content], topic_id: params[:top])

    if @lesson.save
      redirect_to lessons_path
    else
      render 'lessons/new'
    end


  end



end
