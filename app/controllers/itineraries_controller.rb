class ItinerariesController < ApplicationController


  def index
    if params[:search].present?
      @itineraries = Itinerary.near(params[:search], 50, :order => :distance)
      @users = User.all
    else
      @itineraries = Itinerary.all
      @users = User.all
    end
    @rand_itineraries = @itineraries.shuffle[1..10]
    @users = User.all
  end

  def new
    @itinerary = Itinerary.new
  end

  def create
    @itinerary = Itinerary.new(params[:itinerary])
    @itinerary.user = current_user
    @itinerary.user_id = current_user.id
    if @itinerary.save
      redirect_to @itinerary
    else
      render :new
    end
  end

  def show
    id = params[:id]
    @itinerary = Itinerary.find(id)
    @items = @itinerary.items
    @link = Link.find(@itinerary.id)
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
    @new_itinerary.items = @itinerary.items
    @new_itinerary.user = current_user
    @new_itinerary.save
    flash.now[:notice] = 'We have copied your itinerary.'
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
  end



end