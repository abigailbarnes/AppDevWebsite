class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.date :birthdate
      t.string :bio

      t.timestamps
    end
  end
end
