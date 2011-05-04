# == Schema Information
# Schema version: 20110504213012
#
# Table name: song_requests
#
#  id          :integer         not null, primary key
#  dj_id       :integer
#  song_id     :integer
#  singer_id   :integer
#  singer_name :string(255)
#  notes       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class SongRequest < ActiveRecord::Base
  belongs_to :dj
  belongs_to :song
  belongs_to :singer
end
