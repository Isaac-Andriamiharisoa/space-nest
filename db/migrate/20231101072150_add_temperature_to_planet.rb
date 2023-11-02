class AddTemperatureToPlanet < ActiveRecord::Migration[7.1]
  def change
    add_column :planets, :temperature, :integer
  end
end
