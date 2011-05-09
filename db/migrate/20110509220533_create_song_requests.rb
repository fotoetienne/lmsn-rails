class CreateSongRequests < ActiveRecord::Migration
  def self.up
    create_table :song_requests do |t|
      t.references :dj
      t.references :song
      t.references :singer
      t.string :singer_name
      t.string :key
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :song_requests
  end
end
