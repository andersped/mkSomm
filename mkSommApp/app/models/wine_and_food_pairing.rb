class WineAndFoodPairing < ActiveRecord::Base
  belongs_to :category
  belongs_to :food_group
end
