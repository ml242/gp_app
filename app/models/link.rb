class Link < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :item
  attr_accessible :itinerary_id, :item_id, :is_complete
end