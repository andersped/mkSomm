class FoodGroup < ActiveRecord::Base
	has_many :perfects, dependent: :destroy
	has_many :pairings, through: :perfects
	has_many :categories, through: :wine_and_food_pairings

	def as_json(options = {})
		super(options.merge(include: [pairings: {include: [:foods, :categories]}]))
	end

	# override the as_json method to include the user
	# def as_json(options = {})
 #    super(options.merge(include: :user))
 #  end

end

# super(options.merge(include: [:user, comments: {include: :user}]))