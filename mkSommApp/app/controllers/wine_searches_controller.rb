class WineSearchesController < ApplicationController
	
	# Get Wines from Wine.com
  def index
  	@varietal = URI.encode(params[:varietal])

  	wine_service = WineFinder.new(@varietal)				
  	
  	@htmlResponse = wine_service.wine_search

  	render json: @htmlResponse, status: :ok
  end
  
end
