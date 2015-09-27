class AddFoodGroupRefToVarietals < ActiveRecord::Migration
  def change
    add_reference :varietals, :food_group, index: true, foreign_key: true
  end
end
