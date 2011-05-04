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
end
