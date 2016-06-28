class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :posts
         has_one :bprofile, dependent: :destroy
         has_many :jobs
         has_many :applications, :through => :jobs
         has_many :invoices
  mount_uploader :avatar, AvatarUploader
         
         
end
