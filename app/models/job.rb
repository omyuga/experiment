class Job < ActiveRecord::Base
  belongs_to :user
  belongs_to :bprofile
  has_many :applications
end
