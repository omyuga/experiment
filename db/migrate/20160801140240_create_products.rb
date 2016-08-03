class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.decimal :product_price

      t.timestamps null: false
    end
  end
end
