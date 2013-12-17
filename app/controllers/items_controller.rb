class ItemsController < ApplicationController

  def index
    @items = Item.all
    @rand_items = @items.shuffle
  end

  def new
    @item = Item.new
  end

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
    @itineraries = Itinerary.where(user_id: current_user.id)

    @link = Link.new
  end

  def update
    @item = Item.find(params[:id])
    if params["itinerary_id"] != ""
      @item.itineraries << Itinerary.find(params["itinerary_id"])
      @item.update_attributes(params[:item])
      binding.pry
      @item.save
      redirect_to @item
      #flash notice
    else
      @item.update_attributes(params[:item])
      render :edit
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end

end
