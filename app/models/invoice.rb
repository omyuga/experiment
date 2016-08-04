class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :bprofile

  has_many :invoice_items, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :taxes, dependent: :destroy

  accepts_nested_attributes_for :invoice_items, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :products, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :taxes, allow_destroy: true, reject_if: :all_blank


end
