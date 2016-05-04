class AddBprofileRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :bprofile, index: true, foreign_key: true
  end
end
