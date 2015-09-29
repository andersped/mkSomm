class WinesController < ApplicationController
	before_filter :authenticate_user!, only: [:create, :upvote]



	def index
    respond_with Wine.all
  end

  def create
    respond_with Wine.create(wine_params.merge(user_id: current_user.id))
  end

  def show
    respond_with Wine.find(params[:id])
  end

  def upvote
    wine = Wine.find(params[:id])
    wine.increment!(:upvotes)

    respond_with wine
  end

  private
  def wine_params
    params.require(:wine).permit(
    	:name, 
    	:appellation,
    	:region,
    	:varietal,
    	:winery,
    	:price,
    	:rating,
    	:type,
    	:label,
    	:upvotes
    	)
  end

end
