class AddInvoiceToTax < ActiveRecord::Migration
  def change
    add_reference :taxes, :invoice, index: true, foreign_key: true
  end
end
