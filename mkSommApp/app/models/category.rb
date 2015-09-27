class Category < ActiveRecord::Base
	has_many :varietals
	has_many :food_groups, through: :wine_and_food_pairings
	has_many :wine_and_food_pairings, dependent: :destroy
	has_many :pairings, through: :category_pairings
	has_many :category_pairings, dependent: :destroy

	# When rending json add the pairing association
	def as_json(options = {})
		super(options.merge(include: [:pairings, :food_groups]))
	end
end
