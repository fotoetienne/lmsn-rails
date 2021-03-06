# == Schema Information
# Schema version: 20110509220533
#
# Table name: djs
#
#  id           :integer         not null, primary key
#  user_id      :integer
#  code         :integer
#  free         :boolean
#  balance      :decimal(, )     default(0.0)
#  list_updated :date
#  venue        :string(255)
#  public       :boolean         default(TRUE)
#  created_at   :datetime
#  updated_at   :datetime
#  name         :string(255)
#

class Dj < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  has_many :song_requests
  
end
