class Itinerary < ActiveRecord::Base
  attr_accessible :user_id, :title, :img_url, :address, :description, :latitude, :longitude, :parent_id, :created_at, :updated_at, :is_copy
  belongs_to :user
  has_many :links
  has_many :items, through: :links
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def copy
    @i = Itinerary.create(title: title, img_url: img_url, address: address, description: description, parent_id: id, latitude: latitude, longitude: longitude, is_copy: true)
  end

  def add_item(item_id)
    itinerary = Itinerary.find(self.id)
    itinerary.items << Item.find(item_id)
    self.save
  end

  # def geocode(itinerary)
  #   a = Geocoder.search(itinerary.title)
  #   geocode = a[0]
  #   itinerary.latitude = geocode.latitude
  #   itinerary.longitude = geocode.longitude
  #   itinerary.save
  # end

end