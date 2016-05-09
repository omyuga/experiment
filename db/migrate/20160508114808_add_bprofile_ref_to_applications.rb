class AddBprofileRefToApplications < ActiveRecord::Migration
  def change
    add_reference :applications, :bprofile, index: true, foreign_key: true
  end
end
