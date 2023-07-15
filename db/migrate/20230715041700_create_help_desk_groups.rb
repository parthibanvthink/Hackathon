class CreateHelpDeskGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :help_desk_groups do |t|

      t.string :rolenumber
      t.integer :help_desk_id
      t.timestamps
    end
  end
end
