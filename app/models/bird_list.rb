class BirdList < ActiveRecord::Base
  has_many :bird_entries

  def add_entry(bird_entry)
    bird_entries.push(bird_entry)
  end

  def search(search_string, page)
    BirdEntry.search(search_string).paginate :page => page, :per_page => 15, :order => 'bird_id'
  end
end
