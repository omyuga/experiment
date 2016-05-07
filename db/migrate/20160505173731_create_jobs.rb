class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_description
      t.text :job_function
      add_reference :users, :jobs, index: true, foreign_key: true
      add_reference :bprofiles, :jobs, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
