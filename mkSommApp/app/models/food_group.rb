class FoodGroup < ActiveRecord::Base
	has_many :perfects, dependent: :destroy
	has_many :pairings, through: :perfects
	has_many :categories, through: :wine_and_food_pairings
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  def image_url
    image.url(:thumb)
	end

	def as_json(options = {})
		super(options.merge(include: [pairings: {include: [:categories, foods: {include: [:pairing], methods: :image_url}], methods: :image_url}], methods: :image_url))
	end

end																								

# [pairings: {include: :foods, methods: :image_url}]