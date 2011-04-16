class BirdList < ActiveRecord::Base
  has_many :bird_entries
  accepts_nested_attributes_for :bird_entries
end
