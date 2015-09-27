class CreatePerfects < ActiveRecord::Migration
  def change
    create_table :perfects do |t|
      t.references :food_group, index: true, foreign_key: true
      t.references :pairing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
