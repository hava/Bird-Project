class BirdEntry < ActiveRecord::Base
  belongs_to :bird_list
  has_many :sightings

  cattr_reader :per_page
  @@per_page = 15

  def add_sighting(sighting)
    sightings.push(sighting)
  end

  def remove_sighting(sighting)
    sightings.delete(sighting)
  end


  def self.search(search_string)
    search_bird_id = search_string.to_i  rescue nil
    search_date = Date.strptime(search_string, "%d/%m/%Y") rescue nil

    results = BirdEntry.all(:include =>[:sightings], :conditions =>
        ["bird_id = ? OR name like ? OR  sightings.place like ? OR sightings.date = ?",
         search_bird_id, "%#{search_string}%", "%#{search_string}%", search_date])
    results
  end
end
