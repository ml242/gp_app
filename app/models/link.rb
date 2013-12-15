class Link < ActiveRecord::Base
  belongs_to :itinerary
  belongs_to :item
end