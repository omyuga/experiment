class AddInvoiceToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :invoice, index: true, foreign_key: true
  end
end
