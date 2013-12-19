class Item < ActiveRecord::Base
  attr_accessible :name, :address, :description, :img_url, :latitude, :longitude, :created_at, :updated_at
  has_many :links
  has_many :itineraries, through: :links
  geocoded_by :address
  after_validation :geocode

  def self.get_links_for_itinerary(itinerary)
    Link.where(:itinerary_id => itinerary.id)
  end


end
