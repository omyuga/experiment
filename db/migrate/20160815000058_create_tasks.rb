class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_description
      t.decimal :task_rate
      t.integer :tax

      t.timestamps null: false
    end
  end
end
