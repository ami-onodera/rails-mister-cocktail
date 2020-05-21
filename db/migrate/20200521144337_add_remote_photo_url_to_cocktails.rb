class AddRemotePhotoUrlToCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :remote_photo_url, :string
  end
end
