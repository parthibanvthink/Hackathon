class CreateHotDrinkTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :hot_drink_types do |t|
      t.string :text

      t.timestamps
    end
  end
end
