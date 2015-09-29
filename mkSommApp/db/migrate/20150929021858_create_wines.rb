class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :appellation
      t.string :region
      t.string :varietal
      t.string :winery
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :rating
      t.string :type
      t.string :label
      t.integer :upvotes

      t.timestamps null: false
    end
  end
end
