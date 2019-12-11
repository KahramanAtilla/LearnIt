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
end
