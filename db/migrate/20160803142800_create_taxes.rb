class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :name
      t.decimal :percentage
      t.boolean :default

      t.timestamps null: false
    end
  end
end
