class Item < ActiveRecord::Base
  attr_accessible :name, :description, :img_url, :parent_id, :created_at, :updated_at
  has_many :links

  has_many :itineraries, through: :links

end