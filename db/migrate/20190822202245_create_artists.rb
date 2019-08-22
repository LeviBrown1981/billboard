class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :albumn
      t.string :song
      t.string :avatar

      t.timestamps
    end
  end
end
