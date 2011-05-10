# == Schema Information
# Schema version: 20110509220533
#
# Table name: song_requests
#
#  id          :integer         not null, primary key
#  dj_id       :integer
#  song_id     :integer
#  singer_id   :integer
#  singer_name :string(255)
#  key         :string(255)
#  notes       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class SongRequest < ActiveRecord::Base
  belongs_to :dj
  belongs_to :song
  belongs_to :singer

  validates :dj_id    ,   :presence => true
  validates :song_id  ,   :presence => true
  validates :singer_name, :presence => true
end
