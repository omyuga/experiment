class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :posts
         has_one :bprofile, dependent: :destroy
         has_many :jobs
  mount_uploader :avatar, AvatarUploader
         
         
end
