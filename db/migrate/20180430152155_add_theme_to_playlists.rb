class AddThemeToPlaylists < ActiveRecord::Migration[5.1]
  def change
    add_reference :playlists, :theme, foreign_key: true
  end
end
