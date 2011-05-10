# == Schema Information
# Schema version: 20110509220533
#
# Table name: singers
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Singer < ActiveRecord::Base
  belongs_to :user
  has_many :song_requests
end
