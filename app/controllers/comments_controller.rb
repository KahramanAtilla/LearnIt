class CommentsController < ApplicationController

  def create
    @create_comment = Comment.new(title: params[:title], content: params[:content], lesson: $less, user: current_user)
    if @create_comment.save
      flash[:success] = "Votre commentaire a bien été ajouté"
      redirect_to lessons_path(@create_comment)
    else
      flash[:error] = "Erreur lors de l'ajour du commentaire. Veuillez réessayer"
      redirect_to lessons_path(@create_comment)
    end
  end

 

end
