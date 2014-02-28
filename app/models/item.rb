class Item < ActiveRecord::Base
  attr_accessible :name, :address, :description, :img_url, :latitude, :longitude, :created_at, :updated_at
  has_many :links
  has_many :itineraries, through: :links
  geocoded_by :address
  after_validation :geocode

  # def self.get_links_for_itinerary(itinerary)
  #   Link.where(:itinerary_id => itinerary.id)
  # end

  def geocode_function
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
