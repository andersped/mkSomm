class AddAttachmentImageToFoodGroups < ActiveRecord::Migration
  def self.up
    change_table :food_groups do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :food_groups, :image
  end
end
