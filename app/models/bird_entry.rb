class BirdEntry < ActiveRecord::Base
  belongs_to :birdlist
  has_many :sightings

  def seen
    !sightings.empty?
  end

  def new_sighting
    sightings.push(Sighting.new)
  end
end
