class CreateRates < ActiveRecord::Migration[5.2]
  def change
    create_table :rates do |t|
      t.integer :score
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
