class AddNameToVarietals < ActiveRecord::Migration
  def change
    add_column :varietals, :name, :string
  end
end
