class CreateBirdLists < ActiveRecord::Migration
  def self.up
    create_table :bird_lists do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :bird_lists
  end
end
