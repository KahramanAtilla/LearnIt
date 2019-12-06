class AddIndexToJoinFavoriteLesson < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :join_favorite_lessons, :lesson, foreign_key: true
  	 add_reference :join_favorite_lessons, :favorite, foreign_key: true
  end
end
