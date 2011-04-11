class BirdEntry < ActiveRecord::Base
  belongs_to :birdlist
  has_many :sightings

  def seen
    !sightings.empty?
  end
end
