class BirdEntry < ActiveRecord::Base
  belongs_to :bird_list
  has_many :sightings

  cattr_reader :per_page
  @@per_page = 15

  def add_sighting(sighting)
    sightings.push(sighting)
  end

#  t.string :bird_id
#  t.string :name
#  t.date :date
#  t.string :place

  def self.search(search_string)
    results = BirdEntry.joins(:sightings).where("bird_id like '%#{search_string}%' OR
                                                  name like '%#{search_string}%' OR
                              sightings.place like '%#{search_string}%' OR
                              sightings.date like '%#{search_string}%'")
    results
  end
end
