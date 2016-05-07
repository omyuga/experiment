class RemoveJobsIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :jobs_id, :integer
  end
end
