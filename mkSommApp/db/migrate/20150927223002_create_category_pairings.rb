class CreateCategoryPairings < ActiveRecord::Migration
  def change
    create_table :category_pairings do |t|
      t.references :category, index: true, foreign_key: true
      t.references :pairing, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
