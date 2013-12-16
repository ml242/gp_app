class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end

  def down
    drop_table :items do |t|
      t.string :name
      t.string :img_url
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
