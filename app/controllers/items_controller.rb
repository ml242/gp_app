class ItemsController < ApplicationController

  def index
    @items = Item.all
    @rand_items = @items.shuffle[1..10]
  end

  def new
    @item = Item.new
  end

  #TODO add geocode stuff here
  def create
    @item = Item.new(params[:item])
    if params["itinerary_id"] != ""
      @item.itineraries << Itinerary.find(params["itinerary_id"])
      @item.save
      redirect_to "/itineraries/#{params[:itinerary_id]}"
    else
      @item.save
      redirect_to items_path
    end

  end


  def edit
    @item = Item.find(params[:id])
  end

  def show
    @item = Item.find(params[:id])
    @itinerary = Itinerary.find(params[:itinerary_id])
    @link = Link.new(:item_id => :id)
    @itin_new = Itinerary.new(:user_id => current_user.id, :title => "new itinerary")
  end

  def update
    @item = Item.find(params[:id])
    if params["itinerary_id"] != nil
      @item.itineraries << Itinerary.find(params["itinerary_id"])
      @item.update_attributes(params[:item])
      @item.save
      flash[:notice] = 'You have added an item to your itinerary.'
      redirect_to @item
      #flash notice
    else
      @item.update_attributes(params[:item])
      redirect_to "/itineraries/#{current_user.id}"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

end
