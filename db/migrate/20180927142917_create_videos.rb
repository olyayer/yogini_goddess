class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :video
      t.string :thumbnail
      t.string :title
      t.text :description
      t.integer :length
      t.string :level
      t.string :instructor
      t.string :goal

      t.timestamps
    end
  end
end
