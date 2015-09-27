class CreateWineAndFoodPairings < ActiveRecord::Migration
  def change
    create_table :wine_and_food_pairings do |t|
      t.references :category, index: true, foreign_key: true
      t.references :food_group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
