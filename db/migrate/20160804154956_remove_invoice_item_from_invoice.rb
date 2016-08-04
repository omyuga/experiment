class RemoveInvoiceItemFromInvoice < ActiveRecord::Migration
  def change
    remove_reference :invoices, :invoice_item, index: true, foreign_key: true
  end
end
