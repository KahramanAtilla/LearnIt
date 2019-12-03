class AddIndexTopicToLesson < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :topic, foreign_key: true
  end
end
