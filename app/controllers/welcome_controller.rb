class WelcomeController < ApplicationController
  def index
    response = Net::HTTP.get_response(URI.parse("http://192.168.1.21/status"))

    render locals: {
      status: JSON.parse(response.body)
    }
  end
end
