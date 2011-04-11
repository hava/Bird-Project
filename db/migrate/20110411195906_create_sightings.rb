class CreateSightings < ActiveRecord::Migration
  def self.up
    create_table :sightings do |t|
      t.date :date
      t.string :place
      t.text :description
      t.references :bird_entry

      t.timestamps
    end
  end

  def self.down
    drop_table :sightings
  end
end
