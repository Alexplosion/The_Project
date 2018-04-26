class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.references :linkable, polymorphic: true
      t.string :title
      t.string :linky
      t.string :favicon
      t.text :description
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
