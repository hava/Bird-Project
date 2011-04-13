class AddSeenToBirdEntry < ActiveRecord::Migration
  def self.up
    add_column :bird_entries, :seen, :boolean
  end

  def self.down
    remove_column :bird_entries, :seen
  end
end
