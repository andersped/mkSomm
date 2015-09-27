class Perfect < ActiveRecord::Base
  belongs_to :food_group
  belongs_to :pairing
end
