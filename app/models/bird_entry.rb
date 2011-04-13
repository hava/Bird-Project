class BirdEntry < ActiveRecord::Base
  belongs_to :birdlist
  has_many :sightings
end
