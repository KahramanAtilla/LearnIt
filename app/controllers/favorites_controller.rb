class FavoritesController < ApplicationController
  def show
  	 @fav = Favorite.find_by(user_id: current_user.id)
  end

  def update
    if current_user
       Favorite.find_by(user_id: current_user.id).lessons << $less
    else
       redirect_to new_user_session_path
    end
  end

  def destroy
    JoinFavoriteLesson.delete(lesson_to_delete)
    redirect_to favorite_path(current_user.id)
  end

  def lesson_to_delete
    fav = Favorite.find_by(user_id: current_user.id)
    return JoinFavoriteLesson.find_by(favorite_id: fav.id, lesson_id: params[:id])
  end


end
