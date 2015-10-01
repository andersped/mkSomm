class AddVoteToWines < ActiveRecord::Migration
  def change
    add_column :wines, :vote, :integer
  end
end
