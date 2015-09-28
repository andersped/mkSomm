class CategoriesController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :upvote]

	def index
    respond_with Category.all
  end

  def create
    respond_with Category.create(post_params)
  end

  def show
    respond_with Category.find(params[:id])
  end

  def upvote
    category = Category.find(params[:id])
    # post.increment!(:upvotes)

    respond_with category
  end

  private
	  def post_params
	    params.require(:category).permit(:name)
	  end
end