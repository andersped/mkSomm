class Food < ActiveRecord::Base
  belongs_to :pairing
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def image_url
    image.url(:thumb)
	end

	def as_json(options = {})
		super(options.merge(include: [methods: :image_url]))
	end
end

