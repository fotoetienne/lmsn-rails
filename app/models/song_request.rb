class SongRequest < ActiveRecord::Base
  belongs_to :dj
  belongs_to :song
  belongs_to :singer
end
