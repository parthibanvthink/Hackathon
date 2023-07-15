class CreateSnacksOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks_options do |t|
      t.string :text

      t.timestamps
    end
  end
end
