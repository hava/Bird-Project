class BirdEntry < ActiveRecord::Base
  belongs_to :bird_list
  has_many :sightings

  def add_sighting(sighting)
    sightings.push(sighting)
  end
end
