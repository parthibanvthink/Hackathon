class CreateTaskGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :task_groups do |t|
      t.string :rolenumber
      t.integer :task_id
      t.integer :project_id

      t.timestamps
    end
  end
end
