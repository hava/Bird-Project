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
    results = BirdEntry.all(:include =>[:sightings], :conditions => ["bird_id like ? OR
                                                  name like ? OR
                              sightings.place like ? OR
                              sightings.date like ?", "%#{search_string}%", "%#{search_string}%", "%#{search_string}%", "%#{search_string}%"])
    results
  end
end
