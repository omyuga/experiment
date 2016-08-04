class Bprofile < ActiveRecord::Base
    belongs_to :user
    
    has_many :jobs
    has_many :products
    has_many :invoices
    has_many :applications, :through => :jobs
    has_many :posts, :through=> :users
end
