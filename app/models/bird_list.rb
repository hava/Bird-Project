class BirdList < ActiveRecord::Base
  has_many :bird_entries

  def add_entry(bird_entry)
    bird_entries.push(bird_entry)
  end

end
