class ItinerariesController < ApplicationController

  def index
    @itineraries = Itinerary.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(params[:itinerary])
    @itinerary.user = current_user
    if @itinerary.save
      redirect_to itineraries_path
    else
      render :new
    end
  end

  def show
    id = params[:id]
    @itinerary = Itinerary.find(id)
  end

  def edit
    @itinerary = Itinerary.find(params[:id])
  end

  def update
    @itinerary = Itinerary.find(params[:id])
    if @itinerary.update_attributes(params[:itinerary])
      redirect_to @itinerary
    else
      render :edit
    end
  end

  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineraries_path
  end

end