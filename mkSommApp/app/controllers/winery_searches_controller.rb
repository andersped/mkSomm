class WinerySearchesController < ApplicationController
	
	# Get Wines from mkSomm API
  def index
  	@varietal = URI.encode(params[:varietal])

  	winery_service = WineryFinder.new(@varietal)				
  	
  	@htmlResponse = winery_service.winery_search

  	render json: @htmlResponse, status: :ok
  end

end
