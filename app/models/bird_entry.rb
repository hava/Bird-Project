class BirdEntry < ActiveRecord::Base
  belongs_to :bird_list
  has_many :sightings

  cattr_reader :per_page
  @@per_page = 15

  def add_sighting(sighting)
    sightings.push(sighting)
  end
end
