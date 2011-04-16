class BirdEntry < ActiveRecord::Base
  belongs_to :bird_list
  has_many :sightings
end
