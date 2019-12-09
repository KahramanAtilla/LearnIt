class AddIndexLessonToProposal < ActiveRecord::Migration[5.2]
  def change
  	add_reference :proposals, :lesson, foreign_key: true
  end
end
