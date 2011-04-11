class CreateBirdEntries < ActiveRecord::Migration
  def self.up
    create_table :bird_entries do |t|
      t.string :name
      t.references :birdlist

      t.timestamps
    end
  end

  def self.down
    drop_table :bird_entries
  end
end
