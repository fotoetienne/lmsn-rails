class SongRequest < ActiveRecord::Base
  belongs_to :dj
  belongs_to :song
  belongs_to :singer

  validates :dj_id    ,   :presence => true
  validates :song_id  ,   :presence => true
  validates :singer_name, :presence => true
end
