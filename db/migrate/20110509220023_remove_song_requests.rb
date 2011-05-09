class RemoveSongRequests < ActiveRecord::Migration
  def self.up
    drop_table :song_requests
  end

  def self.down
    create_table :song_requests do |t|
      t.references :dj
      t.references :song
      t.references :singer
      t.string :singer_name
      t.string :notes

      t.timestamps
    end
  end
end
