class CreateFoodManagements < ActiveRecord::Migration[7.0]
  def change
    create_table :food_managements do |t|
      t.string :rolenumber
      t.date :start_time
      t.string :type
      t.string :selected_option


      t.timestamps
    end
  end
end
