class PlacesController < ApplicationController
  def new
    @place = Place.new 
  end

  # https://entr451.com/creating-new-records/ 
  # Saving entries from "creating new records" article (company) 
  def create
    @place = Place.new(params["place"])
    @place.save
    redirect_to "/places"
  end

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({"place_id" => @place["id"]})
  end
end
