class CreatePlanets < ActiveRecord::Migration[7.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :details
      t.integer :price
      t.integer :distance

      t.timestamps
    end
  end
end
