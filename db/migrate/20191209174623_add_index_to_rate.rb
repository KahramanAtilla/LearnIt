class AddIndexToRate < ActiveRecord::Migration[5.2]
  def change
  	add_reference :rates, :user, foreign_key: true
  end
end
