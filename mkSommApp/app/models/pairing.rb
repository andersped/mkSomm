class Pairing < ActiveRecord::Base
	has_many :perfects, dependent: :destroy
	has_many :food_groups, through: :perfects
	has_many :categories, through: :category_pairings
	has_many :category_pairings, dependent: :destroy
	has_many :foods

	def as_json(options = {})
		super(options.merge(include: :foods))
	end
end
