class Pairing < ActiveRecord::Base
	has_many :perfects, dependent: :destroy
	has_many :food_groups, through: :perfects
	has_many :categories, through: :category_pairings
	has_many :category_pairings, dependent: :destroy
	has_many :foods
	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def image_url
    image.url(:thumb)
	end

	def as_json(options = {})
		super(options.merge(include: :foods, methods: :image_url))
	end
end

