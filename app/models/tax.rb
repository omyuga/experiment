class Tax < ActiveRecord::Base
    has_many :invoice_item
end
