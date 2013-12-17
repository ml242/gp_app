class Itinerary < ActiveRecord::Base
  attr_accessible :user_id, :title, :img_url, :address, :description, :latitude, :longitude, :parent_id, :created_at, :updated_at, :is_copy
  belongs_to :user
  has_many :links
  has_many :items, through: :links
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?

  def copy
    Itinerary.create(title: title, img_url: img_url, description: description, parent_id: id, is_copy: true)
    # i.items = self.items
    # i.save
  end

  def add_item(item_id)
    itinerary = Itinerary.find(self.id)
    itinerary.items << Item.find(item_id)
    self.save
  end

end