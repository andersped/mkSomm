class Category < ActiveRecord::Base
	has_many :varietals
	has_many :food_groups, through: :wine_and_food_pairings
	has_many :wine_and_food_pairings, dependent: :destroy
	has_many :pairings, through: :category_pairings
	has_many :category_pairings, dependent: :destroy
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	def image_url
    image.url(:thumb)
	end

	# When rending json add the pairing association
	def as_json(options = {})
		super(options.merge(include: [:varietals, pairings: {include: [:foods, :food_groups]}], methods: :image_url))
	end

end
