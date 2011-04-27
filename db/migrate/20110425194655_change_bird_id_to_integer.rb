class ChangeBirdIdToInteger < ActiveRecord::Migration
  def self.up
    remove_column :bird_entries, :bird_id
    add_column :bird_entries, :bird_id, :integer
  end

  def self.down
    remove_column :bird_entries, :bird_id
    add_column :bird_entries, :bird_id, :string
  end
end
