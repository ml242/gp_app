class ItinerariesController < ApplicationController


  def index
    @itineraries = Itinerary.all
    @rand_itineraries = @itineraries.shuffle
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
    @items = @itinerary.items
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
    @itinerary = Itinerary.find(params[:id])
    @new_itinerary = @itinerary.copy
    @new_itinerary.user = current_user
    @new_itinerary.save
    redirect_to @new_itinerary
  end


  def destroy
    @itinerary = Itinerary.find(params[:id])
    @itinerary.destroy
    redirect_to itineraries_path
  end

  def add
    @item = Item.create
    @itinerary = Itinerary.find(params[:id])
    @itinerary.add_item(@item)
    # redirect_to
  end



end