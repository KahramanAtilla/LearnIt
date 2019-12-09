class AddIndexLessonToRate < ActiveRecord::Migration[5.2]
  def change
  	add_reference :rates, :lesson, foreign_key: true
  end
end
