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

  def geocode_function(itinerary)
    a = Geocoder.search(self.address)
    geocode = a[0]
    self.latitude = geocode.latitude
    self.longitude = geocode.longitude
    lat = @itinerary.latitude
    lon = @itinerary.longitude
    photos = Flickr.photos.search(lat: lat, lon: lon).shuffle!
    photo = photos.pop(1)
    self.img_url = 'http://farm' + photo[0].farm.to_s + '.static.flickr.com' + '/' + photo[0].server.to_s + '/' + photo[0].id.to_s + '_' + photo[0].secret.to_s + '.jpg'
    self.save
  end

end