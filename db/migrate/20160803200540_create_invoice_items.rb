class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.string :description
      t.decimal :quantity
      t.references :product, index: true, foreign_key: true
      t.integer :tax_id

      t.timestamps null: false
    end
  end
end
