class CreateJoinFavoriteLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :join_favorite_lessons do |t|

      t.timestamps
    end
  end
end
