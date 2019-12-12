class LessonsController < ApplicationController
  def index
    if params[:title]
      @lessons = Lesson.where('title ILIKE ?', "%#{params[:title]}%")
    else
      @lessons = Lesson.all.last(10)
    end
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

  def lesson_params
    params.require(:lesson).permit(:title)
  end
end
