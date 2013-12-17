class AddColumnToLinksTable < ActiveRecord::Migration
  def change
    add_column :links, :is_complete, :boolean, :default => false
  end
end
