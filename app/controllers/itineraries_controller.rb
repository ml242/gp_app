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

  def copy
    binding.pry
    @itinerary = Itinerary.find(params[:id])
    # @new_copy = Itinerary.create(user_id: current_user.id, title: @itinerary.title, img_url: @itinerary.img_url, description: @itinerary.description, itinerary_parent_id: @itinerary.id)
  end


  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineraries_path
  end


end