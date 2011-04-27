class BirdEntriesController < ApplicationController

  def seen
     @entry = BirdEntry.find(params[:id])
     @bird_list = @entry.bird_list
     seen = params[:bird_entry]["#{@entry.id}"][:seen]
     @entry.update_attribute(:seen, seen)
   end

   def edit_entry
     @entry = BirdEntry.find(params[:id])
   end

  def new_sighting
    @entry = BirdEntry.find(params[:id])
    sighting_param = params[:bird_entry]["#{@entry.id}"][:sighting]
    place = sighting_param[:place]
    date = sighting_param[:date]
    if (!place.empty? || !date.empty?)
      @entry.add_sighting(Sighting.new(:place => place, :date => date))
      @entry.save
    end
  end

  def remove_sighting
    @entry = BirdEntry.find(params[:id])
    @entry.remove_sighting(Sighting.find(params[:sighting_id]))
    @entry.save
  end

end
