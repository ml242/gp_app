class Itinerary < ActiveRecord::Base
  attr_accessible :user_id, :title, :img_url, :description, :itinerary_parent_id, :created_at, :updated_at
  belongs_to :user
  has_many :items
end