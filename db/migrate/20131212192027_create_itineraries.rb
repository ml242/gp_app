class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :user_id
      t.string :title
      t.string :img_url
      t.text :description
      t.integer :itinerary_parent_id
      t.timestamps
    end
  end

  def down
    drop_table :itineraries do |t|
      t.integer :user_id
      t.string :title
      t.string :img_url
      t.text :description
      t.integer :itinerary_parent_id
      t.timestamps
    end
  end
end
