class CreateItemsItineraries < ActiveRecord::Migration
  def change
    create_table :items_itineraries do |t|
      t.integer :item_id
      t.integer :itinerary_id
      t.timestamps
    end
  end

  def down
    drop_table :items_itineraries do |t|
      t.integer :ktem_id
      t.integer :itinerary_id
      t.timestamps
    end
  end
end
