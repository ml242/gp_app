class Item < ActiveRecord::Base
  attr_accessible :name, :address, :description, :img_url, :latitude, :longitude, :created_at, :updated_at
  has_many :links

  has_many :itineraries, through: :links
  geocoded_by :address
  after_validation :geocode
end