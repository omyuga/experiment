class InvoiceItem < ActiveRecord::Base
  has_one :product
  belongs_to :invoice
  has_many :tax
end
