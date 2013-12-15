class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :item_id
      t.integer :itinerary_id
      t.timestamps
    end
  end

  def down
    drop_table :links do |t|
      t.integer :item_id
      t.integer :itinerary_id
      t.timestamps
    end
  end
end
