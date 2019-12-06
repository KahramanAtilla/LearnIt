class AddIndexLessonToComment < ActiveRecord::Migration[5.2]
  def change
  	add_reference :comments, :lesson, foreign_key: true
  end
end
