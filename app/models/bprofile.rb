class Bprofile < ActiveRecord::Base
    belongs_to :user
    
    has_many :posts, :through=> :users
end
