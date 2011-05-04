class Singer < ActiveRecord::Base
  belongs_to :user
  has_many :songrequests
end
