class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.integer :parent_id
      t.timestamps
    end
  end

  def down
    drop_table :items do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.integer :parent_id
      t.timestamps
    end
  end
end
