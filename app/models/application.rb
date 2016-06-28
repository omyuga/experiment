class Application < ActiveRecord::Base
  #attr_accesssible :job, :bprofile, :user, :attachment
  belongs_to :job
  belongs_to :user
  belongs_to :bprofile
  mount_uploader :attachment, AttachmentUploader
  accepts_nested_attributes_for :job
end
