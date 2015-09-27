class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.string :visual
      t.string :aroma
      t.string :fruit
      t.string :floral
      t.string :herbal
      t.string :spice
      t.string :other
      t.string :earth
      t.string :oak
      t.string :structure
      t.references :category, index: true, foreign_key: true
      t.string :food_group
      t.string :references

      t.timestamps null: false
    end
  end
end
