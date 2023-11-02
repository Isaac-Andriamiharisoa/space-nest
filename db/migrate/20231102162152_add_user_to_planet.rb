class AddUserToPlanet < ActiveRecord::Migration[7.1]
  def change
    add_reference :planets, :user, null: false, foreign_key: true
  end
end
