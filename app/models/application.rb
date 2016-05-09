class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :user
  belongs_to :bprofile
  mount_uploader :attachment, AttachmentUploader
end
