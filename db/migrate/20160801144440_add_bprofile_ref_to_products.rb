class AddBprofileRefToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :bprofile, index: true, foreign_key: true
  end
end
