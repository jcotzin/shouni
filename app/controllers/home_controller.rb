class HomeController < ApplicationController
  def index
  end

  def search
    auth = '936dd662054f71d5c137'
    r = rand(10913);

   @response = HTTParty.get("http://hummingbird.me/api/v2/anime/#{r}.json", headers:{'X-Client-Id'=> auth})
  #  query = response.parsed_response[""]
   @all =  @response.parsed_response
   @canonical =  @response.parsed_response["anime"]["titles"]["canonical"].upcase
   @english =  @response.parsed_response["anime"]["titles"]["english"]
   @synopsis =  @response.parsed_response["anime"]["synopsis"]
   @vid =  @response.parsed_response["anime"]["youtube_video_id"]
   @thumb = @response.parsed_response["anime"]["poster_image"]



  end
  def new
  end
end
