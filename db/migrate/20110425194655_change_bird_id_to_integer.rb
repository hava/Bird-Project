class ChangeBirdIdToInteger < ActiveRecord::Migration
  def self.up
    change_column :bird_entries, :bird_id, :integer
  end

  def self.down
    change_column :bird_entries, :bird_id, :string
  end
end
