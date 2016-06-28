class AddBprofileToInvoice < ActiveRecord::Migration
  def change
    add_reference :invoices, :bprofile, index: true, foreign_key: true
  end
end
