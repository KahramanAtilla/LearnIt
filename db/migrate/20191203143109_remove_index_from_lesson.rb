class RemoveIndexFromLesson < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :field
  end
end
