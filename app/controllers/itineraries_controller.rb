class ItinerariesController < ApplicationController

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
  end

  def show
    id = params[:id]
    @itinerary = Itinerary.find(id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

end