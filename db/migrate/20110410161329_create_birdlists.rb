class CreateBirdlists < ActiveRecord::Migration
  def self.up
    create_table :birdlists do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :birdlists
  end
end
