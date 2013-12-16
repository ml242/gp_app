class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.integer :user_id
      t.string :title
      t.string :img_url
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :parent_id, :null => false, :default => 0
      t.boolean :is_copy, :default => false
      t.timestamps
    end
  end

  def down
    drop_table :itineraries do |t|
      t.integer :user_id
      t.string :title
      t.string :img_url
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude
      t.integer :parent_id
      t.timestamps
    end
  end
end
