class FoodGroupsController < ApplicationController
	# before_filter :authenticate_user!, only: [:create, :upvote]

  def index
#     @product = Product.find(params[:id])
# @product[:url] = @product.avatar.url(:medium) //paperclip method
# respond_with(@product.as_json)
    respond_with FoodGroup.all
  end

  def create
    respond_with FoodGroup.create(food_group_params)

    # For only users to create
    # respond_with FoodGroup.create(food_group_params.merge(user_id: current_user.id))
  end

  def show
    respond_with FoodGroup.find(params[:id])
  end

  # def vote
  #   food_group = FoodGroup.find(params[:id])
  #   # post.increment!(:upvotes)

  #   respond_with food_group
  # end

  private
	  def post_params
	    params.require(:food_group).permit(:name, :image)
	  end
end
