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
    sighting_param = params[:bird_entry]["#{@entry.id}"][:sighting]
    @entry.add_sighting(Sighting.new(:place => sighting_param[:place], :date => sighting_param[:date]))
    @entry.save
  end

end
