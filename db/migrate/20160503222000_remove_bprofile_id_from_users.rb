class RemoveBprofileIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :bprofile_id, :integer
  end
end
