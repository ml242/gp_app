class Itinerary < ActiveRecord::Base
  attr_accessible :user_id, :title, :img_url, :description, :parent_id, :created_at, :updated_at, :is_copy
  belongs_to :user
  has_many :items_itineraries
  has_many :items, through: :items_itineraries

  def copy
    Itinerary.create(title: title, img_url: img_url, description: description, parent_id: id, is_copy: true)
  end

end