class Job < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :bprofile, dependent: :destroy
  has_many :applications, dependent: :destroy
end
