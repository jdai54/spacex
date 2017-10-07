require 'httparty'
require 'json'

class WelcomeController < ApplicationController

  def index
    response = HTTParty.get("https://api.spacexdata.com/v1/launches/latest")

    if response.code == 404
      render json: response = {"404": "Not found!"}
    elsif response.code == 500..600
      render json: response = {"500": "Oops we messed up"}
    # else
    #   render json: response.parsed_response
    end

    @launches = JSON.parse(response)
  end

  def about
  end
end
