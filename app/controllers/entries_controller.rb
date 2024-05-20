class EntriesController < ApplicationController
  def new
    @entry = Entry.new 
    @entry.place_id = params["place_id"]
  end

 # https://entr451.com/creating-new-records/ 
 # Saving entries from "creating new records" article (company)
  def create
    @entry = Entry.new(params["entry"])
    @entry.save
    redirect_to "/places"
  end
end
