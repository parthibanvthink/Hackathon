class CreateHelpDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :help_desks do |t|

      t.string :type
      t.string :text
      t.timestamps
    end
  end
end
