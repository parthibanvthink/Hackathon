class CreateFoodManagementGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :food_management_groups do |t|
      t.string :rollnumber

      t.timestamps
    end
  end
end
