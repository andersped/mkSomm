class CategoryPairing < ActiveRecord::Base
  belongs_to :category
  belongs_to :pairing
end
