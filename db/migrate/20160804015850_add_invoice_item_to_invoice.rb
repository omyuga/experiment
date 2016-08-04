class AddInvoiceItemToInvoice < ActiveRecord::Migration
  def change
    add_reference :invoices, :invoice_item, index: true, foreign_key: true
  end
end
