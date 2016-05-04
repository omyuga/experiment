class CreateBprofiles < ActiveRecord::Migration
  def change
    create_table :bprofiles do |t|
      t.string :name
      t.text :summary
      t.string :copmpany_type
      t.integer :number_of_employes
      t.string :industry

      t.timestamps null: false
    end
  end
end
