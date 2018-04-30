class AddThemeToPlaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :places, :theme, foreign_key: true
  end
end
