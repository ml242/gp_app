class Item < ActiveRecord::Base
  attr_accessible :item_name, :description, :item_parent_id, :created_at, :updated_at
  has_many :items_itineraries
  has_many :itineraries, through: :items_itineraries
end