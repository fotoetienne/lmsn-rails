# == Schema Information
# Schema version: 20110504032245
#
# Table name: songs
#
#  id         :integer         not null, primary key
#  dj_id      :integer
#  artist     :string(255)
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
  belongs_to :dj
  has_many :song_requests

  def make_request(singer_name = nil, singer_id = nil)
    if singer_id
      singer_name = Singer.find(singer_id).name
    end
    request_params = {:dj_id =>       dj_id,
                      :song_id =>     id,
                      :singer_id =>   singer_id,
                      :singer_name => singer_name }
    SongRequest.create!(request_params)
  end
end
