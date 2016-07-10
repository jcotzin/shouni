class HomeController < ApplicationController
  def index
    auth = '936dd662054f71d5c137'
    r = rand(10913);

   @response = HTTParty.get("http://hummingbird.me/api/v2/anime/#{r}.json", headers:{'X-Client-Id'=> auth})
  #  query = response.parsed_response[""]
   @titles =  @response.parsed_response["anime"]["titles"]
     end
  def new
  end
end
