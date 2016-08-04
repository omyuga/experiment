class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :bprofile
  
  has_many :invoice_items, dependent: :destroy
  has_many :product, dependent: :destroy
  has_many :tax, dependent: :destroy
  
  accepts_nested_attributes_for :invoice_items, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :product, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :tax, allow_destroy: true, reject_if: :all_blank
  
  
end
