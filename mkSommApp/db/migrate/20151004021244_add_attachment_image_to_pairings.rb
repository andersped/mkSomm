class AddAttachmentImageToPairings < ActiveRecord::Migration
  def self.up
    change_table :pairings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pairings, :image
  end
end
