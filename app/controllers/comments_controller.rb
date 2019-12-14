class CommentsController < ApplicationController

  def create
    @lesson = Lesson.find(params[:lesson_id])
    @create_comment = Comment.new(title: params[:title], content: params[:content], lesson: $less, user: current_user)
    if @create_comment.save
      flash[:success] = "Votre commentaire a bien été ajouté"
      redirect_to lesson_path(@lesson.id)
    else
      flash[:error] = "Erreur lors de l'ajour du commentaire. Veuillez réessayer"
      redirect_to lesson_path(@lesson.id)
    end
  end

  def destroy
      @lesson = Lesson.find(params[:lesson_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to lesson_path(@lesson.id)
    end


 

end
