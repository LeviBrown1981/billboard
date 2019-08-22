class CreateLeviLists < ActiveRecord::Migration[6.0]
  def change
    create_table :levi_lists do |t|
      t.string :artist
      t.string :albumn
      t.string :avatar

      t.timestamps
    end
  end
end
