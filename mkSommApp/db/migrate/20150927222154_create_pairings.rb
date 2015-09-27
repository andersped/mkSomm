class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
