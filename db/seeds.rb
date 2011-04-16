# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

bird_list = BirdList.new(:name => "South African Bird List")
hadeda = BirdEntry.new(:name => "Hadeda", :seen => true)
plover = BirdEntry.new(:name => "Plover", :seen => false)
woodpecker = BirdEntry.new(:name => "Woodpecker", :seen => false)
bird_list.bird_entries.push(hadeda, plover, woodpecker)
bird_list.save