class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.text :description
      t.integer :item_parent_id
      t.timestamps
    end
  end

  def down
    drop_table :items do |t|
      t.string :item_name
      t.text :description
      t.integer :item_parent_id
      t.timestamps
    end
  end
end
