class Itinerary < ActiveRecord::Base
  attr_accessible :user_id, :title, :img_url, :description, :parent_id, :created_at, :updated_at, :is_copy
  belongs_to :user
  has_many :links
  has_many :items, through: :links

  def copy
    Itinerary.create(title: title, img_url: img_url, description: description, parent_id: id, is_copy: true)
  end

  def add_item(item_id)
    itinerary = Itinerary.find(self.id)
    itinerary.items << Item.find(item_id)
    self.save
  end

end