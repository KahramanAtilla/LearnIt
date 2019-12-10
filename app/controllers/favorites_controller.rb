class FavoritesController < ApplicationController
  def show
  	 @favorite = Favorite.find_by(user_id: current_user.id)
  end
end
