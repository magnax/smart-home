require 'net/http'
require 'uri'

class LedsController < ApplicationController
  def index
    api = "http://192.168.1.21/#{params[:c]}/#{params[:s]}"

    url = URI.parse(api)

    response = Net::HTTP.get_response(url)

    if response.is_a?(Net::HTTPSuccess)
      redirect_to root_path
    else
      redirect_to error_path
    end
  end
end
