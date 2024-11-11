require 'open-uri'

class FlatsController < ApplicationController
  # '/'
  def index
    # Tomorrow:
    # @flats = Flat.all
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json) # array of hashes
  end

  # '/flats/:id'
  def show
    # Tomorrow
    # @flat = Flat.find(params[:id])
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json) # array of hashes
    @flat = @flats.find do |flat_hash|
      flat_hash['id'] == params[:id].to_i
    end
  end
end
