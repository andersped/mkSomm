class VarietalsController < ApplicationController
	# before_filter :authenticate_user!, only: [:create, :upvote]

  def index
    category = params[:winename]
    @varietals = Category.find_by_name(category).varietals

    respond_with @varietals
  end

  def create
    respond_with Varietal.create(varietal_params)

  end

  def show
    respond_with Varietal.find(params[:id])
  end

  # def vote
  #   varietal = Varietal.find(params[:id])
  #   # post.increment!(:upvotes)

  #   respond_with varietal
  # end

  private
	  # def varietal_params
	  #   params.require(:food_group).permit(:name)
	  # end

end
