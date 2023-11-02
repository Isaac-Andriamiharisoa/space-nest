class AddImageUrlToPlanet < ActiveRecord::Migration[7.1]
  def change
    add_column :planets, :image_url, :string, default: ""
  end
end
