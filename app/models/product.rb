class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :bprofile
  
  has_many :invoices
end
