require 'httparty'
require 'json'

class WelcomeController < ApplicationController

  def index
    response = HTTParty.get("https://api.spacexdata.com/v1/launches/latest")
    render json: response.parsed_response

    if response.code == 200
      puts "All good!"
    elsif 404
      puts "Not found!"
    else 500..600
      puts "Oops we messed up"
    end
  end

  def about
  end
end
