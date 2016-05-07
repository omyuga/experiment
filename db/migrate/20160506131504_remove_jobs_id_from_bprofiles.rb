class RemoveJobsIdFromBprofiles < ActiveRecord::Migration
  def change
    remove_column :bprofiles, :jobs_id, :integer
  end
end
