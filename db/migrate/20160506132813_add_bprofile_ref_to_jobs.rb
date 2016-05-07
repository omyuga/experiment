class AddBprofileRefToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :bprofile, index: true, foreign_key: true
  end
end
