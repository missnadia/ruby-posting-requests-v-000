class TipsController < ApplicationController
  def create
    resp = Faraday.post("http://api.foursquare.com/v2/tips/add") do |req|
      req.params['oath_token'] = session[:token]
      req.params['v'] = '20160201'
      req.params['venueId'] = params[:venue_id]
      req.params['text'] = params[:tip]
    end
  end
end
