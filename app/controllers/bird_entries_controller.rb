class BirdEntriesController < ApplicationController

  def seen
     @entry = BirdEntry.find(params[:id])
     seen = params[:bird_entry]["#{@entry.id}"][:seen]
     @entry.update_attribute(:seen, seen)
   end

   def edit_entry
     @entry = BirdEntry.find(params[:id])
   end

  def new_sighting
    @entry = BirdEntry.find(params[:id])
    place = params[:bird_entry]["#{@entry.id}"][:sighting][:place]
    date = params[:bird_entry]["#{@entry.id}"][:sighting][:date]
    @entry.sightings.push(Sighting.new(:place => place, :date => date))
    @entry.save
  end

end
