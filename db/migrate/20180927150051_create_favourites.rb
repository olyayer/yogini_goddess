class CreateFavourites < ActiveRecord::Migration[5.1]
  def change
    create_table :favourites do |t|
      t.references :user_id, foreign_key: true
      t.references :video_id, foreign_key: true

      t.timestamps
    end
  end
end
