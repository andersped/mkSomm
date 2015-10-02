require 'open-uri'

class WineryFinder
  
  def initialize(varietal)
  	@varietal = varietal
  	
  end

  def winery_search
  	
		url = "http://protected-bastion-2209.herokuapp.com/"
		
		htmlRequest = Typhoeus::Request.new(
			url,
			:headers => {"User-Agent" => "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36"})
			
			JSON.parse htmlRequest.run.response_body


	end
end