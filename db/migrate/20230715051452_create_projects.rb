class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :projectname
      t.string :rollnumber
      t.string :username
      t.string :role

      t.timestamps
    end
  end
end
