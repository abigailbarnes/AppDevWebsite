class CreatePaintings < ActiveRecord::Migration[6.0]
  def change
    create_table :paintings do |t|
      t.string :title
      t.date :date_painted
      t.integer :artist_id
      t.string :image
      t.string :museum

      t.timestamps
    end
  end
end
