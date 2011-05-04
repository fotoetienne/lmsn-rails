class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.integer :dj_id
      t.string :artist
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :songs
  end
end
